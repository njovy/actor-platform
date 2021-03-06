//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestSendAuthCodeObsolete.java
//

#ifndef _APRequestSendAuthCodeObsolete_H_
#define _APRequestSendAuthCodeObsolete_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestSendAuthCodeObsolete_HEADER 1

@interface APRequestSendAuthCodeObsolete : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)phoneNumber
                     withInt:(jint)appId
                withNSString:(NSString *)apiKey;

+ (APRequestSendAuthCodeObsolete *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getApiKey;

- (jint)getAppId;

- (jint)getHeaderKey;

- (jlong)getPhoneNumber;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestSendAuthCodeObsolete)

J2OBJC_STATIC_FIELD_GETTER(APRequestSendAuthCodeObsolete, HEADER, jint)

FOUNDATION_EXPORT APRequestSendAuthCodeObsolete *APRequestSendAuthCodeObsolete_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestSendAuthCodeObsolete_initWithLong_withInt_withNSString_(APRequestSendAuthCodeObsolete *self, jlong phoneNumber, jint appId, NSString *apiKey);

FOUNDATION_EXPORT APRequestSendAuthCodeObsolete *new_APRequestSendAuthCodeObsolete_initWithLong_withInt_withNSString_(jlong phoneNumber, jint appId, NSString *apiKey) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestSendAuthCodeObsolete_init(APRequestSendAuthCodeObsolete *self);

FOUNDATION_EXPORT APRequestSendAuthCodeObsolete *new_APRequestSendAuthCodeObsolete_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestSendAuthCodeObsolete)

typedef APRequestSendAuthCodeObsolete ImActorModelApiRpcRequestSendAuthCodeObsolete;

#endif // _APRequestSendAuthCodeObsolete_H_
