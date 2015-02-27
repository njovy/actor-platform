//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSubscribeFromGroupOnline.java
//

#ifndef _ImActorModelApiRpcRequestSubscribeFromGroupOnline_H_
#define _ImActorModelApiRpcRequestSubscribeFromGroupOnline_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestSubscribeFromGroupOnline_HEADER 75

@interface ImActorModelApiRpcRequestSubscribeFromGroupOnline : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestSubscribeFromGroupOnline *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups;

- (instancetype)init;

- (id<JavaUtilList>)getGroups;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestSubscribeFromGroupOnline)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestSubscribeFromGroupOnline *ImActorModelApiRpcRequestSubscribeFromGroupOnline_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestSubscribeFromGroupOnline, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestSubscribeFromGroupOnline)

#endif // _ImActorModelApiRpcRequestSubscribeFromGroupOnline_H_