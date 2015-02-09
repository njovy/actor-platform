//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/actors/ReceiverActor.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/actors/Actor.h"
#include "com/droidkit/actors/ActorRef.h"
#include "com/droidkit/actors/ActorSelection.h"
#include "com/droidkit/actors/ActorSystem.h"
#include "com/droidkit/actors/Props.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/network/mtp/MTProto.h"
#include "im/actor/model/network/mtp/MTProtoCallback.h"
#include "im/actor/model/network/mtp/actors/ReceiverActor.h"
#include "im/actor/model/network/mtp/actors/SenderActor.h"
#include "im/actor/model/network/mtp/entity/Container.h"
#include "im/actor/model/network/mtp/entity/MTPush.h"
#include "im/actor/model/network/mtp/entity/MTRpcResponse.h"
#include "im/actor/model/network/mtp/entity/MessageAck.h"
#include "im/actor/model/network/mtp/entity/NewSessionCreated.h"
#include "im/actor/model/network/mtp/entity/ProtoMessage.h"
#include "im/actor/model/network/mtp/entity/ProtoSerializer.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/RequestResend.h"
#include "im/actor/model/network/mtp/entity/UnsentMessage.h"
#include "im/actor/model/network/mtp/entity/UnsentResponse.h"
#include "im/actor/model/network/util/MTUids.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"

__attribute__((unused)) static void MTReceiverActor_onReceiveWithMTProtoMessage_(MTReceiverActor *self, MTProtoMessage *message);

@interface MTReceiverActor () {
 @public
  DAActorRef *sender_;
  MTMTProto *proto_;
  JavaUtilArrayList *receivedMessages_;
}

- (void)onReceiveWithMTProtoMessage:(MTProtoMessage *)message;
@end

J2OBJC_FIELD_SETTER(MTReceiverActor, sender_, DAActorRef *)
J2OBJC_FIELD_SETTER(MTReceiverActor, proto_, MTMTProto *)
J2OBJC_FIELD_SETTER(MTReceiverActor, receivedMessages_, JavaUtilArrayList *)

@interface MTReceiverActor_$1 () {
 @public
  MTMTProto *val$proto_;
}
@end

J2OBJC_FIELD_SETTER(MTReceiverActor_$1, val$proto_, MTMTProto *)

@implementation MTReceiverActor

NSString * MTReceiverActor_TAG_ = @"ProtoReceiver";

+ (DAActorRef *)receiverWithMTMTProto:(MTMTProto *)proto {
  return MTReceiverActor_receiverWithMTMTProto_(proto);
}

- (instancetype)initWithMTMTProto:(MTMTProto *)proto {
  if (self = [super init]) {
    MTReceiverActor_setAndConsume_receivedMessages_(self, [[JavaUtilArrayList alloc] init]);
    MTReceiverActor_set_proto_(self, proto);
  }
  return self;
}

- (void)preStart {
  MTReceiverActor_set_sender_(self, MTSenderActor_senderActorWithMTMTProto_(proto_));
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[MTProtoMessage class]]) {
    MTReceiverActor_onReceiveWithMTProtoMessage_(self, (MTProtoMessage *) check_class_cast(message, [MTProtoMessage class]));
  }
  else {
    [self dropWithId:message];
  }
}

- (void)onReceiveWithMTProtoMessage:(MTProtoMessage *)message {
  MTReceiverActor_onReceiveWithMTProtoMessage_(self, message);
}

- (void)dealloc {
  RELEASE_(sender_);
  RELEASE_(proto_);
  RELEASE_(receivedMessages_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(MTReceiverActor *)other {
  [super copyAllFieldsTo:other];
  MTReceiverActor_set_sender_(other, sender_);
  MTReceiverActor_set_proto_(other, proto_);
  MTReceiverActor_set_receivedMessages_(other, receivedMessages_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "receiverWithMTMTProto:", "receiver", "Lcom.droidkit.actors.ActorRef;", 0x9, NULL },
    { "initWithMTMTProto:", "ReceiverActor", NULL, 0x1, NULL },
    { "preStart", NULL, "V", 0x1, NULL },
    { "onReceiveWithId:", "onReceive", "V", 0x1, NULL },
    { "onReceiveWithMTProtoMessage:", "onReceive", "V", 0x2, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_", NULL, 0x1a, "Ljava.lang.String;", &MTReceiverActor_TAG_,  },
    { "MAX_RECEIVED_BUFFER_", NULL, 0x1a, "I", NULL, .constantValue.asInt = MTReceiverActor_MAX_RECEIVED_BUFFER },
    { "sender_", NULL, 0x2, "Lcom.droidkit.actors.ActorRef;", NULL,  },
    { "proto_", NULL, 0x2, "Lim.actor.model.network.mtp.MTProto;", NULL,  },
    { "receivedMessages_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
  };
  static const J2ObjcClassInfo _MTReceiverActor = { 1, "ReceiverActor", "im.actor.model.network.mtp.actors", NULL, 0x1, 5, methods, 5, fields, 0, NULL};
  return &_MTReceiverActor;
}

@end

DAActorRef *MTReceiverActor_receiverWithMTMTProto_(MTMTProto *proto) {
  MTReceiverActor_init();
  return [((DAActorSystem *) nil_chk(DAActorSystem_system())) actorOfWithDAActorSelection:[[[DAActorSelection alloc] initWithDAProps:DAProps_createWithIOSClass_withDAActorCreator_(MTReceiverActor_class_(), [[[MTReceiverActor_$1 alloc] initWithMTMTProto:proto] autorelease]) withNSString:JreStrcat("$$", [((MTMTProto *) nil_chk(proto)) getActorPath], @"/receiver")] autorelease]];
}

void MTReceiverActor_onReceiveWithMTProtoMessage_(MTReceiverActor *self, MTProtoMessage *message) {
  jboolean disableConfirm = NO;
  @try {
    if ([((JavaUtilArrayList *) nil_chk(self->receivedMessages_)) containsWithId:JavaLangLong_valueOfWithLong_([((MTProtoMessage *) nil_chk(message)) getMessageId])]) {
      AMLog_wWithNSString_withNSString_(MTReceiverActor_TAG_, JreStrcat("$J$", @"Already received message #", [message getMessageId], @": ignoring"));
      return;
    }
    if ([self->receivedMessages_ size] >= MTReceiverActor_MAX_RECEIVED_BUFFER) {
      [self->receivedMessages_ removeWithInt:0];
      [self->receivedMessages_ addWithId:JavaLangLong_valueOfWithLong_([message getMessageId])];
    }
    MTProtoStruct *obj;
    @try {
      obj = MTProtoSerializer_readMessagePayloadWithByteArray_([message getPayload]);
    }
    @catch (JavaIoIOException *e) {
      AMLog_wWithNSString_withNSString_(MTReceiverActor_TAG_, @"Unable to parse message: ignoring");
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      return;
    }
    if ([obj isKindOfClass:[MTNewSessionCreated class]]) {
      [((DAActorRef *) nil_chk(self->sender_)) sendWithId:[[[MTSenderActor_NewSession alloc] init] autorelease]];
      [((id<MTMTProtoCallback>) nil_chk([((MTMTProto *) nil_chk(self->proto_)) getCallback])) onSessionCreated];
    }
    else if ([obj isKindOfClass:[MTContainer class]]) {
      MTContainer *container = (MTContainer *) check_class_cast(obj, [MTContainer class]);
      {
        IOSObjectArray *a__ = [((MTContainer *) nil_chk(container)) getMessages];
        MTProtoMessage * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        MTProtoMessage * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          MTProtoMessage *m = *b__++;
          [((DAActorRef *) nil_chk([self self__])) sendWithId:m withDAActorRef:[self sender]];
        }
      }
    }
    else if ([obj isKindOfClass:[MTMTRpcResponse class]]) {
      MTMTRpcResponse *responseBox = (MTMTRpcResponse *) check_class_cast(obj, [MTMTRpcResponse class]);
      [((DAActorRef *) nil_chk(self->sender_)) sendWithId:[[[MTSenderActor_ForgetMessage alloc] initWithLong:[((MTMTRpcResponse *) nil_chk(responseBox)) getMessageId]] autorelease]];
      [((id<MTMTProtoCallback>) nil_chk([((MTMTProto *) nil_chk(self->proto_)) getCallback])) onRpcResponseWithLong:[responseBox getMessageId] withByteArray:[responseBox getPayload]];
    }
    else if ([obj isKindOfClass:[MTMessageAck class]]) {
      MTMessageAck *ack = (MTMessageAck *) check_class_cast(obj, [MTMessageAck class]);
      {
        IOSLongArray *a__ = ((MTMessageAck *) nil_chk(ack))->messagesIds_;
        jlong const *b__ = ((IOSLongArray *) nil_chk(a__))->buffer_;
        jlong const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          jlong ackMsgId = *b__++;
          [((DAActorRef *) nil_chk(self->sender_)) sendWithId:[[[MTSenderActor_ForgetMessage alloc] initWithLong:ackMsgId] autorelease]];
        }
      }
    }
    else if ([obj isKindOfClass:[MTMTPush class]]) {
      MTMTPush *box = (MTMTPush *) check_class_cast(obj, [MTMTPush class]);
      [((id<MTMTProtoCallback>) nil_chk([((MTMTProto *) nil_chk(self->proto_)) getCallback])) onUpdateWithByteArray:[((MTMTPush *) nil_chk(box)) getPayload]];
    }
    else if ([obj isKindOfClass:[MTUnsentResponse class]]) {
      MTUnsentResponse *unsent = (MTUnsentResponse *) check_class_cast(obj, [MTUnsentResponse class]);
      if (![self->receivedMessages_ containsWithId:JavaLangLong_valueOfWithLong_([((MTUnsentResponse *) nil_chk(unsent)) getResponseMessageId])]) {
        disableConfirm = YES;
        [((DAActorRef *) nil_chk(self->sender_)) sendWithId:[[[MTSenderActor_SendMessage alloc] initWithLong:ImActorModelNetworkUtilMTUids_nextId() withByteArray:[((MTRequestResend *) [[[MTRequestResend alloc] initWithLong:[unsent getMessageId]] autorelease]) toByteArray]] autorelease]];
      }
    }
    else if ([obj isKindOfClass:[MTUnsentMessage class]]) {
      MTUnsentMessage *unsent = (MTUnsentMessage *) check_class_cast(obj, [MTUnsentMessage class]);
      if (![self->receivedMessages_ containsWithId:JavaLangLong_valueOfWithLong_([((MTUnsentMessage *) nil_chk(unsent)) getMessageId])]) {
        disableConfirm = YES;
        [((DAActorRef *) nil_chk(self->sender_)) sendWithId:[[[MTSenderActor_SendMessage alloc] initWithLong:ImActorModelNetworkUtilMTUids_nextId() withByteArray:[((MTRequestResend *) [[[MTRequestResend alloc] initWithLong:[unsent getMessageId]] autorelease]) toByteArray]] autorelease]];
      }
    }
    else {
      AMLog_wWithNSString_withNSString_(MTReceiverActor_TAG_, JreStrcat("$@", @"Unsupported package ", obj));
    }
  }
  @catch (JavaLangException *e) {
    AMLog_wWithNSString_withNSString_(MTReceiverActor_TAG_, @"Parsing error");
  }
  @finally {
    if (!disableConfirm) {
      [((DAActorRef *) nil_chk(self->sender_)) sendWithId:[[[MTSenderActor_ConfirmMessage alloc] initWithLong:[((MTProtoMessage *) nil_chk(message)) getMessageId]] autorelease]];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTReceiverActor)

@implementation MTReceiverActor_$1

- (MTReceiverActor *)create {
  return [[[MTReceiverActor alloc] initWithMTMTProto:val$proto_] autorelease];
}

- (instancetype)initWithMTMTProto:(MTMTProto *)capture$0 {
  MTReceiverActor_$1_set_val$proto_(self, capture$0);
  return [super init];
}

- (void)dealloc {
  RELEASE_(val$proto_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(MTReceiverActor_$1 *)other {
  [super copyAllFieldsTo:other];
  MTReceiverActor_$1_set_val$proto_(other, val$proto_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lim.actor.model.network.mtp.actors.ReceiverActor;", 0x1, NULL },
    { "initWithMTMTProto:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$proto_", NULL, 0x1012, "Lim.actor.model.network.mtp.MTProto;", NULL,  },
  };
  static const J2ObjcClassInfo _MTReceiverActor_$1 = { 1, "$1", "im.actor.model.network.mtp.actors", "ReceiverActor", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_MTReceiverActor_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTReceiverActor_$1)