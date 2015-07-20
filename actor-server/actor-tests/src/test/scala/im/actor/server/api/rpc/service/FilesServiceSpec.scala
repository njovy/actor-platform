package im.actor.server.api.rpc.service

import java.io.OutputStreamWriter
import java.net.{ HttpURLConnection, URL }

import com.amazonaws.auth.EnvironmentVariableCredentialsProvider
import com.amazonaws.util.IOUtils
import com.github.dwhjames.awswrap.s3.FutureTransfer
import im.actor.api.rpc._
import im.actor.api.rpc.files._
import im.actor.server.api.rpc.service.files.FilesServiceImpl
import im.actor.server.oauth.{ GoogleProvider, OAuth2GoogleConfig }
import im.actor.server.session.Session
import im.actor.server.social.SocialManager
import im.actor.server.util.FileUtils._
import im.actor.server.{ BaseAppSuite, ImplicitFileStorageAdapter }

import scala.concurrent.Await

class FilesServiceSpec extends BaseAppSuite with ImplicitFileStorageAdapter {
  behavior of "FilesService"

  it should "Generate upload url" in e1

  it should "Generate valid upload part urls" in e2

  it should "Complete upload" in e3

  it should "Generate valid download urls" in e4

  it should "Generate valid upload part urls when same request comes twice" in e5

  it should "Process CommitFileUpload in reasonable amount of time" in e6

  implicit val sessionRegion = Session.startRegionProxy()

  val awsCredentials = new EnvironmentVariableCredentialsProvider()

  implicit val seqUpdManagerRegion = buildSeqUpdManagerRegion()
  implicit val socialManagerRegion = SocialManager.startRegion()

  lazy val service = new FilesServiceImpl

  val oauthGoogleConfig = OAuth2GoogleConfig.load(system.settings.config.getConfig("services.google.oauth"))
  implicit val oauth2Service = new GoogleProvider(oauthGoogleConfig)
  implicit val authService = buildAuthService()

  val (user, _, _) = createUser()
  val authId = createAuthId()
  val sessionId = createSessionId()

  implicit val clientData = ClientData(authId, sessionId, Some(user.id))

  var uploadKey: Array[Byte] = Array.empty

  var fileLocation: Option[FileLocation] = None

  var expectedContents: Option[String] = None

  def e1() = {
    val size = 20

    whenReady(service.handleGetFileUploadUrl(size)) { resp ⇒
      resp should matchPattern {
        case Ok(ResponseGetFileUploadUrl(url, key)) ⇒

      }

      this.uploadKey = resp.toOption.get.uploadKey
    }
  }

  def e2() = {
    val part1Size = 1024 * 32 // big part
    val part2Size = 5 // small part

    val resp1 = whenReady(service.handleGetFileUploadPartUrl(1, part1Size, uploadKey)) { resp ⇒
      resp should matchPattern {
        case Ok(ResponseGetFileUploadPartUrl(_)) ⇒
      }

      (part1Size, resp)
    }

    val resp2 = whenReady(service.handleGetFileUploadPartUrl(2, part2Size, uploadKey)) { resp ⇒
      resp should matchPattern {
        case Ok(ResponseGetFileUploadPartUrl(_)) ⇒
      }

      (part2Size, resp)
    }

    val parts = List(resp1, resp2) map {
      case (size, Ok(ResponseGetFileUploadPartUrl(urlStr))) ⇒
        val url = new URL(urlStr)
        val connection = url.openConnection().asInstanceOf[HttpURLConnection]
        connection.setDoOutput(true)
        connection.setRequestMethod("PUT")
        connection.addRequestProperty("Content-Type", "application/octet-stream")
        val out = new OutputStreamWriter(connection.getOutputStream)
        val partContents = ("." * size)
        out.write(partContents)
        out.close()
        val responseCode = connection.getResponseCode()
        responseCode should ===(200)
        partContents
    }

    this.expectedContents = Some(parts.foldLeft("") { (acc, p) ⇒ acc + p })
  }

  def e3() = {
    whenReady(service.handleCommitFileUpload(uploadKey, "The.File")) { resp ⇒
      resp should matchPattern {
        case Ok(ResponseCommitFileUpload(_)) ⇒
      }

      this.fileLocation = Some(resp.toOption.get.uploadedFileLocation)
    }
  }

  def e4() = {
    val urlStr = whenReady(service.handleGetFileUrl(fileLocation.get)) { resp ⇒
      resp should matchPattern {
        case Ok(ResponseGetFileUrl(_, _)) ⇒
      }

      resp.toOption.get.url
    }

    urlStr should include("The.File?")

    val url = new URL(urlStr)
    val connection = url.openConnection().asInstanceOf[HttpURLConnection]
    connection.setDoOutput(true)
    connection.setRequestMethod("GET")
    connection.getResponseMessage should ===("OK")

    IOUtils.toString(connection.getInputStream) should ===(expectedContents.get)
  }

  def e5() = {
    val partSize = 1024 * 32
    whenReady(service.handleGetFileUploadPartUrl(1, partSize, uploadKey)) { resp ⇒
      resp should matchPattern {
        case Ok(ResponseGetFileUploadPartUrl(_)) ⇒
      }
    }
    whenReady(service.handleGetFileUploadPartUrl(1, partSize, uploadKey)) { resp ⇒
      resp should matchPattern {
        case Ok(ResponseGetFileUploadPartUrl(_)) ⇒
      }
    }
  }

  def e6() = {
    import scala.concurrent.duration._

    //6,25 Mb
    val partsCount = 200
    val partSize = 1024 * 32

    val uploadKey = whenReady(service.handleGetFileUploadUrl(partSize * partsCount)) { resp ⇒
      resp should matchPattern { case Ok(ResponseGetFileUploadUrl(url, _)) ⇒ }
      resp.toOption.get.uploadKey
    }

    val urls = (1 to partsCount) map { i ⇒
      whenReady(service.handleGetFileUploadPartUrl(i, partSize, uploadKey)) { resp ⇒
        resp should matchPattern {
          case Ok(ResponseGetFileUploadPartUrl(_)) ⇒
        }
        resp.toOption.get.url
      }
    }

    val parts = urls map { urlStr ⇒
      val url = new URL(urlStr)
      val connection = url.openConnection().asInstanceOf[HttpURLConnection]
      connection.setDoOutput(true)
      connection.setRequestMethod("PUT")
      connection.addRequestProperty("Content-Type", "application/octet-stream")
      val out = new OutputStreamWriter(connection.getOutputStream)
      val partContents = "." * partSize
      out.write(partContents)
      out.close()
      val responseCode = connection.getResponseCode()
      responseCode shouldEqual 200
      partContents
    }
    val s3Key = new String(uploadKey)
    within(20.seconds) {
      Await.ready(for {
        tempDir ← createTempDir()
        _ ← FutureTransfer.listenFor {
          fsAdapter.transferManager.downloadDirectory(fsAdapter.bucketName, s"upload_part_$s3Key", tempDir)
        } map (_.waitForCompletion())
      } yield (), Duration.Inf)
    }

    //    within(25.seconds) {
    //      Await.result(service.handleCommitFileUpload(uploadKey, "The.File"), Duration.Inf)
    //    }
  }
}
