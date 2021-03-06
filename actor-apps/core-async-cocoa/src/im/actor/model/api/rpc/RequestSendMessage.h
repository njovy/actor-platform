//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestSendMessage.java
//

#ifndef _APRequestSendMessage_H_
#define _APRequestSendMessage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class APMessage;
@class APOutPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestSendMessage_HEADER 92

@interface APRequestSendMessage : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPOutPeer:(APOutPeer *)peer
                         withLong:(jlong)rid
                    withAPMessage:(APMessage *)message;

+ (APRequestSendMessage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (APMessage *)getMessage;

- (APOutPeer *)getPeer;

- (jlong)getRid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestSendMessage)

J2OBJC_STATIC_FIELD_GETTER(APRequestSendMessage, HEADER, jint)

FOUNDATION_EXPORT APRequestSendMessage *APRequestSendMessage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestSendMessage_initWithAPOutPeer_withLong_withAPMessage_(APRequestSendMessage *self, APOutPeer *peer, jlong rid, APMessage *message);

FOUNDATION_EXPORT APRequestSendMessage *new_APRequestSendMessage_initWithAPOutPeer_withLong_withAPMessage_(APOutPeer *peer, jlong rid, APMessage *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestSendMessage_init(APRequestSendMessage *self);

FOUNDATION_EXPORT APRequestSendMessage *new_APRequestSendMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestSendMessage)

typedef APRequestSendMessage ImActorModelApiRpcRequestSendMessage;

#endif // _APRequestSendMessage_H_
