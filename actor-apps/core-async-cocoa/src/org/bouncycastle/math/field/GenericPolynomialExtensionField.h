//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/field/GenericPolynomialExtensionField.java
//

#ifndef _OrgBouncycastleMathFieldGenericPolynomialExtensionField_H_
#define _OrgBouncycastleMathFieldGenericPolynomialExtensionField_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/math/field/PolynomialExtensionField.h"

@class JavaMathBigInteger;
@protocol OrgBouncycastleMathFieldFiniteField;
@protocol OrgBouncycastleMathFieldPolynomial;

@interface OrgBouncycastleMathFieldGenericPolynomialExtensionField : NSObject < OrgBouncycastleMathFieldPolynomialExtensionField > {
 @public
  id<OrgBouncycastleMathFieldFiniteField> subfield_;
  id<OrgBouncycastleMathFieldPolynomial> minimalPolynomial_;
}

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (JavaMathBigInteger *)getCharacteristic;

- (jint)getDegree;

- (jint)getDimension;

- (id<OrgBouncycastleMathFieldPolynomial>)getMinimalPolynomial;

- (id<OrgBouncycastleMathFieldFiniteField>)getSubfield;

- (NSUInteger)hash;

#pragma mark Package-Private

- (instancetype)initWithOrgBouncycastleMathFieldFiniteField:(id<OrgBouncycastleMathFieldFiniteField>)subfield
                     withOrgBouncycastleMathFieldPolynomial:(id<OrgBouncycastleMathFieldPolynomial>)polynomial;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathFieldGenericPolynomialExtensionField)

J2OBJC_FIELD_SETTER(OrgBouncycastleMathFieldGenericPolynomialExtensionField, subfield_, id<OrgBouncycastleMathFieldFiniteField>)
J2OBJC_FIELD_SETTER(OrgBouncycastleMathFieldGenericPolynomialExtensionField, minimalPolynomial_, id<OrgBouncycastleMathFieldPolynomial>)

FOUNDATION_EXPORT void OrgBouncycastleMathFieldGenericPolynomialExtensionField_initWithOrgBouncycastleMathFieldFiniteField_withOrgBouncycastleMathFieldPolynomial_(OrgBouncycastleMathFieldGenericPolynomialExtensionField *self, id<OrgBouncycastleMathFieldFiniteField> subfield, id<OrgBouncycastleMathFieldPolynomial> polynomial);

FOUNDATION_EXPORT OrgBouncycastleMathFieldGenericPolynomialExtensionField *new_OrgBouncycastleMathFieldGenericPolynomialExtensionField_initWithOrgBouncycastleMathFieldFiniteField_withOrgBouncycastleMathFieldPolynomial_(id<OrgBouncycastleMathFieldFiniteField> subfield, id<OrgBouncycastleMathFieldPolynomial> polynomial) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathFieldGenericPolynomialExtensionField)

#endif // _OrgBouncycastleMathFieldGenericPolynomialExtensionField_H_
