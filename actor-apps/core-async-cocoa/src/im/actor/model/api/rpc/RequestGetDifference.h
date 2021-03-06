//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestGetDifference.java
//

#ifndef _APRequestGetDifference_H_
#define _APRequestGetDifference_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestGetDifference_HEADER 11

@interface APRequestGetDifference : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state;

+ (APRequestGetDifference *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestGetDifference)

J2OBJC_STATIC_FIELD_GETTER(APRequestGetDifference, HEADER, jint)

FOUNDATION_EXPORT APRequestGetDifference *APRequestGetDifference_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestGetDifference_initWithInt_withByteArray_(APRequestGetDifference *self, jint seq, IOSByteArray *state);

FOUNDATION_EXPORT APRequestGetDifference *new_APRequestGetDifference_initWithInt_withByteArray_(jint seq, IOSByteArray *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestGetDifference_init(APRequestGetDifference *self);

FOUNDATION_EXPORT APRequestGetDifference *new_APRequestGetDifference_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestGetDifference)

typedef APRequestGetDifference ImActorModelApiRpcRequestGetDifference;

#endif // _APRequestGetDifference_H_
