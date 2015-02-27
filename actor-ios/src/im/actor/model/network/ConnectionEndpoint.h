//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/ConnectionEndpoint.java
//

#ifndef _AMConnectionEndpoint_H_
#define _AMConnectionEndpoint_H_

@class AMConnectionEndpoint_TypeEnum;

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

@interface AMConnectionEndpoint : NSObject {
}

- (instancetype)initWithNSString:(NSString *)host
                         withInt:(jint)port
withAMConnectionEndpoint_TypeEnum:(AMConnectionEndpoint_TypeEnum *)type;

- (AMConnectionEndpoint_TypeEnum *)getType;

- (NSString *)getHost;

- (jint)getPort;

@end

J2OBJC_EMPTY_STATIC_INIT(AMConnectionEndpoint)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMConnectionEndpoint ImActorModelNetworkConnectionEndpoint;

J2OBJC_TYPE_LITERAL_HEADER(AMConnectionEndpoint)

typedef NS_ENUM(NSUInteger, AMConnectionEndpoint_Type) {
  AMConnectionEndpoint_Type_TCP = 0,
  AMConnectionEndpoint_Type_TCP_TLS = 1,
  AMConnectionEndpoint_Type_WS = 2,
  AMConnectionEndpoint_Type_WS_TLS = 3,
};

@interface AMConnectionEndpoint_TypeEnum : JavaLangEnum < NSCopying > {
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *AMConnectionEndpoint_TypeEnum_values();

+ (AMConnectionEndpoint_TypeEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT AMConnectionEndpoint_TypeEnum *AMConnectionEndpoint_TypeEnum_valueOfWithNSString_(NSString *name);
- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL AMConnectionEndpoint_TypeEnum_initialized;
J2OBJC_STATIC_INIT(AMConnectionEndpoint_TypeEnum)

FOUNDATION_EXPORT AMConnectionEndpoint_TypeEnum *AMConnectionEndpoint_TypeEnum_values_[];

#define AMConnectionEndpoint_TypeEnum_TCP AMConnectionEndpoint_TypeEnum_values_[AMConnectionEndpoint_Type_TCP]
J2OBJC_ENUM_CONSTANT_GETTER(AMConnectionEndpoint_TypeEnum, TCP)

#define AMConnectionEndpoint_TypeEnum_TCP_TLS AMConnectionEndpoint_TypeEnum_values_[AMConnectionEndpoint_Type_TCP_TLS]
J2OBJC_ENUM_CONSTANT_GETTER(AMConnectionEndpoint_TypeEnum, TCP_TLS)

#define AMConnectionEndpoint_TypeEnum_WS AMConnectionEndpoint_TypeEnum_values_[AMConnectionEndpoint_Type_WS]
J2OBJC_ENUM_CONSTANT_GETTER(AMConnectionEndpoint_TypeEnum, WS)

#define AMConnectionEndpoint_TypeEnum_WS_TLS AMConnectionEndpoint_TypeEnum_values_[AMConnectionEndpoint_Type_WS_TLS]
J2OBJC_ENUM_CONSTANT_GETTER(AMConnectionEndpoint_TypeEnum, WS_TLS)

J2OBJC_TYPE_LITERAL_HEADER(AMConnectionEndpoint_TypeEnum)

#endif // _AMConnectionEndpoint_H_