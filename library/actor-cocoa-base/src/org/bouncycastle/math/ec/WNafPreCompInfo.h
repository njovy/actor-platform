//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/ec/WNafPreCompInfo.java
//

#ifndef _OrgBouncycastleMathEcWNafPreCompInfo_H_
#define _OrgBouncycastleMathEcWNafPreCompInfo_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/math/ec/PreCompInfo.h"

@class IOSObjectArray;
@class OrgBouncycastleMathEcECPoint;

@interface OrgBouncycastleMathEcWNafPreCompInfo : NSObject < OrgBouncycastleMathEcPreCompInfo > {
 @public
  IOSObjectArray *preComp_;
  IOSObjectArray *preCompNeg_;
  OrgBouncycastleMathEcECPoint *twice_;
}

#pragma mark Public

- (instancetype)init;

- (IOSObjectArray *)getPreComp;

- (IOSObjectArray *)getPreCompNeg;

- (OrgBouncycastleMathEcECPoint *)getTwice;

- (void)setPreCompWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preComp;

- (void)setPreCompNegWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preCompNeg;

- (void)setTwiceWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)twice;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathEcWNafPreCompInfo)

J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcWNafPreCompInfo, preComp_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcWNafPreCompInfo, preCompNeg_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcWNafPreCompInfo, twice_, OrgBouncycastleMathEcECPoint *)

FOUNDATION_EXPORT void OrgBouncycastleMathEcWNafPreCompInfo_init(OrgBouncycastleMathEcWNafPreCompInfo *self);

FOUNDATION_EXPORT OrgBouncycastleMathEcWNafPreCompInfo *new_OrgBouncycastleMathEcWNafPreCompInfo_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcWNafPreCompInfo)

#endif // _OrgBouncycastleMathEcWNafPreCompInfo_H_