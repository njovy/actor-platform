//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/Endpoints.java
//

#ifndef _AMEndpoints_H_
#define _AMEndpoints_H_

#include "J2ObjC_header.h"

@class AMConnectionEndpoint;
@class IOSObjectArray;

@interface AMEndpoints : NSObject

#pragma mark Public

- (instancetype)initWithAMConnectionEndpointArray:(IOSObjectArray *)endpoints;

- (AMConnectionEndpoint *)fetchEndpoint;

@end

J2OBJC_EMPTY_STATIC_INIT(AMEndpoints)

FOUNDATION_EXPORT void AMEndpoints_initWithAMConnectionEndpointArray_(AMEndpoints *self, IOSObjectArray *endpoints);

FOUNDATION_EXPORT AMEndpoints *new_AMEndpoints_initWithAMConnectionEndpointArray_(IOSObjectArray *endpoints) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMEndpoints)

typedef AMEndpoints ImActorModelNetworkEndpoints;

#endif // _AMEndpoints_H_
