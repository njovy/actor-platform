//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestRemoveAvatar.java
//

#ifndef _APRequestRemoveAvatar_H_
#define _APRequestRemoveAvatar_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestRemoveAvatar_HEADER 91

@interface APRequestRemoveAvatar : APRequest

#pragma mark Public

- (instancetype)init;

+ (APRequestRemoveAvatar *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestRemoveAvatar)

J2OBJC_STATIC_FIELD_GETTER(APRequestRemoveAvatar, HEADER, jint)

FOUNDATION_EXPORT APRequestRemoveAvatar *APRequestRemoveAvatar_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestRemoveAvatar_init(APRequestRemoveAvatar *self);

FOUNDATION_EXPORT APRequestRemoveAvatar *new_APRequestRemoveAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestRemoveAvatar)

typedef APRequestRemoveAvatar ImActorModelApiRpcRequestRemoveAvatar;

#endif // _APRequestRemoveAvatar_H_
