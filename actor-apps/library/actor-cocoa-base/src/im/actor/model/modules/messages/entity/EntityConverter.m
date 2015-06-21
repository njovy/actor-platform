//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/entity/EntityConverter.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/MessageState.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/PeerType.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/modules/messages/entity/EntityConverter.h"

@implementation ImActorModelModulesMessagesEntityEntityConverter

+ (AMMessageStateEnum *)convertWithAPMessageStateEnum:(APMessageStateEnum *)state {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithAPMessageStateEnum_(state);
}

+ (AMGroup *)convertWithAPGroup:(APGroup *)group {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithAPGroup_(group);
}

+ (AMPeerTypeEnum *)convertWithAPPeerTypeEnum:(APPeerTypeEnum *)peerType {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithAPPeerTypeEnum_(peerType);
}

+ (AMPeer *)convertWithAPPeer:(APPeer *)peer {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithAPPeer_(peer);
}

+ (AMFastThumb *)convertWithAPFastThumb:(APFastThumb *)fastThumb {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithAPFastThumb_(fastThumb);
}

- (instancetype)init {
  ImActorModelModulesMessagesEntityEntityConverter_init(self);
  return self;
}

@end

AMMessageStateEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithAPMessageStateEnum_(APMessageStateEnum *state) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  if (state == nil) {
    return AMMessageStateEnum_get_UNKNOWN();
  }
  switch ([state ordinal]) {
    case APMessageState_READ:
    return AMMessageStateEnum_get_READ();
    case APMessageState_RECEIVED:
    return AMMessageStateEnum_get_RECEIVED();
    case APMessageState_SENT:
    return AMMessageStateEnum_get_SENT();
    default:
    return AMMessageStateEnum_get_UNKNOWN();
  }
}

AMGroup *ImActorModelModulesMessagesEntityEntityConverter_convertWithAPGroup_(APGroup *group) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  return new_AMGroup_initWithAPGroup_(group);
}

AMPeerTypeEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithAPPeerTypeEnum_(APPeerTypeEnum *peerType) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  switch ([peerType ordinal]) {
    case APPeerType_GROUP:
    return AMPeerTypeEnum_get_GROUP();
    default:
    case APPeerType_PRIVATE:
    return AMPeerTypeEnum_get_PRIVATE();
  }
}

AMPeer *ImActorModelModulesMessagesEntityEntityConverter_convertWithAPPeer_(APPeer *peer) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  return new_AMPeer_initWithAMPeerTypeEnum_withInt_(ImActorModelModulesMessagesEntityEntityConverter_convertWithAPPeerTypeEnum_([((APPeer *) nil_chk(peer)) getType]), [peer getId]);
}

AMFastThumb *ImActorModelModulesMessagesEntityEntityConverter_convertWithAPFastThumb_(APFastThumb *fastThumb) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  if (fastThumb == nil) {
    return nil;
  }
  return new_AMFastThumb_initWithInt_withInt_withByteArray_([((APFastThumb *) nil_chk(fastThumb)) getW], [fastThumb getH], [fastThumb getThumb]);
}

void ImActorModelModulesMessagesEntityEntityConverter_init(ImActorModelModulesMessagesEntityEntityConverter *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesMessagesEntityEntityConverter *new_ImActorModelModulesMessagesEntityEntityConverter_init() {
  ImActorModelModulesMessagesEntityEntityConverter *self = [ImActorModelModulesMessagesEntityEntityConverter alloc];
  ImActorModelModulesMessagesEntityEntityConverter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesEntityEntityConverter)