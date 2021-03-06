//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/util/Integers.java
//

#ifndef _OrgBouncycastleUtilIntegers_H_
#define _OrgBouncycastleUtilIntegers_H_

#include "J2ObjC_header.h"

@class JavaLangInteger;

@interface OrgBouncycastleUtilIntegers : NSObject

#pragma mark Public

- (instancetype)init;

+ (jint)rotateLeftWithInt:(jint)i
                  withInt:(jint)distance;

+ (jint)rotateRightWithInt:(jint)i
                   withInt:(jint)distance;

+ (JavaLangInteger *)valueOfWithInt:(jint)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleUtilIntegers)

FOUNDATION_EXPORT jint OrgBouncycastleUtilIntegers_rotateLeftWithInt_withInt_(jint i, jint distance);

FOUNDATION_EXPORT jint OrgBouncycastleUtilIntegers_rotateRightWithInt_withInt_(jint i, jint distance);

FOUNDATION_EXPORT JavaLangInteger *OrgBouncycastleUtilIntegers_valueOfWithInt_(jint value);

FOUNDATION_EXPORT void OrgBouncycastleUtilIntegers_init(OrgBouncycastleUtilIntegers *self);

FOUNDATION_EXPORT OrgBouncycastleUtilIntegers *new_OrgBouncycastleUtilIntegers_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilIntegers)

#endif // _OrgBouncycastleUtilIntegers_H_
