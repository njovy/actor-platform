//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateMessageDateChanged.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateMessageDateChanged.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateMessageDateChanged () {
 @public
  ImActorModelApiPeer *peer_;
  jlong rid_;
  jlong date_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateMessageDateChanged, peer_, ImActorModelApiPeer *)

@implementation ImActorModelApiUpdatesUpdateMessageDateChanged

+ (ImActorModelApiUpdatesUpdateMessageDateChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateMessageDateChanged_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)rid
                                   withLong:(jlong)date {
  ImActorModelApiUpdatesUpdateMessageDateChanged_initWithImActorModelApiPeer_withLong_withLong_(self, peer, rid, date);
  return self;
}

- (instancetype)init {
  ImActorModelApiUpdatesUpdateMessageDateChanged_init(self);
  return self;
}

- (ImActorModelApiPeer *)getPeer {
  return self->peer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_ImActorModelApiPeer_init()];
  self->rid_ = [values getLongWithInt:2];
  self->date_ = [values getLongWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeLongWithInt:2 withLong:self->rid_];
  [writer writeLongWithInt:3 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"update MessageDateChanged{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateMessageDateChanged_HEADER;
}

@end

ImActorModelApiUpdatesUpdateMessageDateChanged *ImActorModelApiUpdatesUpdateMessageDateChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateMessageDateChanged_initialize();
  return ((ImActorModelApiUpdatesUpdateMessageDateChanged *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiUpdatesUpdateMessageDateChanged_init(), data));
}

void ImActorModelApiUpdatesUpdateMessageDateChanged_initWithImActorModelApiPeer_withLong_withLong_(ImActorModelApiUpdatesUpdateMessageDateChanged *self, ImActorModelApiPeer *peer, jlong rid, jlong date) {
  (void) ImActorModelNetworkParserUpdate_init(self);
  self->peer_ = peer;
  self->rid_ = rid;
  self->date_ = date;
}

ImActorModelApiUpdatesUpdateMessageDateChanged *new_ImActorModelApiUpdatesUpdateMessageDateChanged_initWithImActorModelApiPeer_withLong_withLong_(ImActorModelApiPeer *peer, jlong rid, jlong date) {
  ImActorModelApiUpdatesUpdateMessageDateChanged *self = [ImActorModelApiUpdatesUpdateMessageDateChanged alloc];
  ImActorModelApiUpdatesUpdateMessageDateChanged_initWithImActorModelApiPeer_withLong_withLong_(self, peer, rid, date);
  return self;
}

void ImActorModelApiUpdatesUpdateMessageDateChanged_init(ImActorModelApiUpdatesUpdateMessageDateChanged *self) {
  (void) ImActorModelNetworkParserUpdate_init(self);
}

ImActorModelApiUpdatesUpdateMessageDateChanged *new_ImActorModelApiUpdatesUpdateMessageDateChanged_init() {
  ImActorModelApiUpdatesUpdateMessageDateChanged *self = [ImActorModelApiUpdatesUpdateMessageDateChanged alloc];
  ImActorModelApiUpdatesUpdateMessageDateChanged_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateMessageDateChanged)