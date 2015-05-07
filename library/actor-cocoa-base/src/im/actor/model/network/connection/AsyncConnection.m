//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/connection/AsyncConnection.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/ConnectionEndpoint.h"
#include "im/actor/model/network/connection/AsyncConnection.h"
#include "im/actor/model/network/connection/AsyncConnectionInterface.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface AMAsyncConnection () {
 @public
  id<AMAsyncConnectionInterface> connection_;
  AMConnectionEndpoint *endpoint_;
}

@end

J2OBJC_FIELD_SETTER(AMAsyncConnection, connection_, id<AMAsyncConnectionInterface>)
J2OBJC_FIELD_SETTER(AMAsyncConnection, endpoint_, AMConnectionEndpoint *)

@implementation AMAsyncConnection

- (instancetype)initWithAMConnectionEndpoint:(AMConnectionEndpoint *)endpoint
              withAMAsyncConnectionInterface:(id<AMAsyncConnectionInterface>)connection {
  AMAsyncConnection_initWithAMConnectionEndpoint_withAMAsyncConnectionInterface_(self, endpoint, connection);
  return self;
}

- (AMConnectionEndpoint *)getEndpoint {
  return endpoint_;
}

- (void)onConnected {
  [((id<AMAsyncConnectionInterface>) nil_chk(connection_)) onConnected];
}

- (void)onReceivedWithByteArray:(IOSByteArray *)data {
  [((id<AMAsyncConnectionInterface>) nil_chk(connection_)) onReceivedWithByteArray:data];
}

- (void)onClosed {
  [((id<AMAsyncConnectionInterface>) nil_chk(connection_)) onClosed];
}

@end

void AMAsyncConnection_initWithAMConnectionEndpoint_withAMAsyncConnectionInterface_(AMAsyncConnection *self, AMConnectionEndpoint *endpoint, id<AMAsyncConnectionInterface> connection) {
  (void) NSObject_init(self);
  self->connection_ = connection;
  self->endpoint_ = endpoint;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMAsyncConnection)