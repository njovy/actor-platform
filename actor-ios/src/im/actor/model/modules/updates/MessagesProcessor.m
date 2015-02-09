//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/updates/MessagesProcessor.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/actors/ActorRef.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "im/actor/model/Messenger.h"
#include "im/actor/model/api/MessageContent.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/TextMessage.h"
#include "im/actor/model/entity/EntityConverter.h"
#include "im/actor/model/entity/Message.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/TextContent.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/messages/DialogsActor.h"
#include "im/actor/model/modules/updates/MessagesProcessor.h"
#include "java/io/IOException.h"
#include "java/lang/System.h"
#include "java/util/List.h"

__attribute__((unused)) static jlong ImActorModelModulesUpdatesMessagesProcessor_buildSortKey(ImActorModelModulesUpdatesMessagesProcessor *self);

@interface ImActorModelModulesUpdatesMessagesProcessor () {
 @public
  AMMessenger *messenger_;
}

- (jlong)buildSortKey;
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesMessagesProcessor, messenger_, AMMessenger *)

@implementation ImActorModelModulesUpdatesMessagesProcessor

- (instancetype)initWithAMMessenger:(AMMessenger *)messenger {
  if (self = [super init]) {
    ImActorModelModulesUpdatesMessagesProcessor_set_messenger_(self, messenger);
  }
  return self;
}

- (jlong)buildSortKey {
  return ImActorModelModulesUpdatesMessagesProcessor_buildSortKey(self);
}

- (void)onMessageWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                 withInt:(jint)senderUid
                                withLong:(jlong)date
                                withLong:(jlong)rid
       withImActorModelApiMessageContent:(ImActorModelApiMessageContent *)content {
  ImActorModelEntityPeer *peer = ImActorModelEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  ImActorModelEntityContentAbsContent *msgContent;
  if ([((ImActorModelApiMessageContent *) nil_chk(content)) getType] == (jint) 0x01) {
    @try {
      ImActorModelApiTextMessage *textMessage = ((ImActorModelApiTextMessage *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiTextMessage_class_(), [content getContent]));
      msgContent = [[[ImActorModelEntityContentTextContent alloc] initWithNSString:[((ImActorModelApiTextMessage *) nil_chk(textMessage)) getText]] autorelease];
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      return;
    }
  }
  else {
    return;
  }
  ImActorModelEntityMessage *message = [[[ImActorModelEntityMessage alloc] initWithLong:rid withLong:ImActorModelModulesUpdatesMessagesProcessor_buildSortKey(self) withLong:date withInt:senderUid withImActorModelEntityMessageStateEnum:[((AMMessenger *) nil_chk(messenger_)) myUid] == senderUid ? ImActorModelEntityMessageStateEnum_get_SENT() : ImActorModelEntityMessageStateEnum_get_UNKNOWN() withImActorModelEntityContentAbsContent:msgContent] autorelease];
  [((DAActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([messenger_ getMessagesModule])) getConversationActorWithImActorModelEntityPeer:peer])) sendWithId:message];
}

- (void)onMessageReadWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                    withLong:(jlong)startDate
                                    withLong:(jlong)readDate {
  ImActorModelEntityPeer *peer = ImActorModelEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
}

- (void)onMessageReadByMeWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                        withLong:(jlong)startDate {
  ImActorModelEntityPeer *peer = ImActorModelEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
}

- (void)onMessageReceivedWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                        withLong:(jlong)startDate
                                        withLong:(jlong)receivedDate {
  ImActorModelEntityPeer *peer = ImActorModelEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
}

- (void)onMessageDeleteWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                              withJavaUtilList:(id<JavaUtilList>)rids {
  ImActorModelEntityPeer *peer = ImActorModelEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
}

- (void)onMessageSentWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                    withLong:(jlong)rid
                                    withLong:(jlong)date {
  ImActorModelEntityPeer *peer = ImActorModelEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
}

- (void)onChatClearWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer {
  ImActorModelEntityPeer *peer = ImActorModelEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DAActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((AMMessenger *) nil_chk(messenger_)) getMessagesModule])) getDialogsActor])) sendWithId:[[[ImActorModelModulesMessagesDialogsActor_ChatClear alloc] initWithImActorModelEntityPeer:peer] autorelease]];
}

- (void)onChatDeleteWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer {
  ImActorModelEntityPeer *peer = ImActorModelEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DAActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((AMMessenger *) nil_chk(messenger_)) getMessagesModule])) getDialogsActor])) sendWithId:[[[ImActorModelModulesMessagesDialogsActor_ChatDelete alloc] initWithImActorModelEntityPeer:peer] autorelease]];
}

- (void)onUserRegisteredWithInt:(jint)uid {
}

- (void)dealloc {
  RELEASE_(messenger_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUpdatesMessagesProcessor *)other {
  [super copyAllFieldsTo:other];
  ImActorModelModulesUpdatesMessagesProcessor_set_messenger_(other, messenger_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithAMMessenger:", "MessagesProcessor", NULL, 0x1, NULL },
    { "buildSortKey", NULL, "J", 0x2, NULL },
    { "onMessageWithImActorModelApiPeer:withInt:withLong:withLong:withImActorModelApiMessageContent:", "onMessage", "V", 0x1, NULL },
    { "onMessageReadWithImActorModelApiPeer:withLong:withLong:", "onMessageRead", "V", 0x1, NULL },
    { "onMessageReadByMeWithImActorModelApiPeer:withLong:", "onMessageReadByMe", "V", 0x1, NULL },
    { "onMessageReceivedWithImActorModelApiPeer:withLong:withLong:", "onMessageReceived", "V", 0x1, NULL },
    { "onMessageDeleteWithImActorModelApiPeer:withJavaUtilList:", "onMessageDelete", "V", 0x1, NULL },
    { "onMessageSentWithImActorModelApiPeer:withLong:withLong:", "onMessageSent", "V", 0x1, NULL },
    { "onChatClearWithImActorModelApiPeer:", "onChatClear", "V", 0x1, NULL },
    { "onChatDeleteWithImActorModelApiPeer:", "onChatDelete", "V", 0x1, NULL },
    { "onUserRegisteredWithInt:", "onUserRegistered", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "messenger_", NULL, 0x2, "Lim.actor.model.Messenger;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUpdatesMessagesProcessor = { 1, "MessagesProcessor", "im.actor.model.modules.updates", NULL, 0x1, 11, methods, 1, fields, 0, NULL};
  return &_ImActorModelModulesUpdatesMessagesProcessor;
}

@end

jlong ImActorModelModulesUpdatesMessagesProcessor_buildSortKey(ImActorModelModulesUpdatesMessagesProcessor *self) {
  return JavaLangSystem_currentTimeMillis();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesMessagesProcessor)