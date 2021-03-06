//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestRegisterGooglePush.java
//

#ifndef _APRequestRegisterGooglePush_H_
#define _APRequestRegisterGooglePush_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestRegisterGooglePush_HEADER 51

@interface APRequestRegisterGooglePush : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)projectId
                withNSString:(NSString *)token;

+ (APRequestRegisterGooglePush *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jlong)getProjectId;

- (NSString *)getToken;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestRegisterGooglePush)

J2OBJC_STATIC_FIELD_GETTER(APRequestRegisterGooglePush, HEADER, jint)

FOUNDATION_EXPORT APRequestRegisterGooglePush *APRequestRegisterGooglePush_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestRegisterGooglePush_initWithLong_withNSString_(APRequestRegisterGooglePush *self, jlong projectId, NSString *token);

FOUNDATION_EXPORT APRequestRegisterGooglePush *new_APRequestRegisterGooglePush_initWithLong_withNSString_(jlong projectId, NSString *token) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestRegisterGooglePush_init(APRequestRegisterGooglePush *self);

FOUNDATION_EXPORT APRequestRegisterGooglePush *new_APRequestRegisterGooglePush_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestRegisterGooglePush)

typedef APRequestRegisterGooglePush ImActorModelApiRpcRequestRegisterGooglePush;

#endif // _APRequestRegisterGooglePush_H_
