//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/ec/WTauNafPreCompInfo.java
//


#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/math/ec/WTauNafPreCompInfo.h"

@implementation OrgBouncycastleMathEcWTauNafPreCompInfo

- (IOSObjectArray *)getPreComp {
  return preComp_;
}

- (void)setPreCompWithOrgBouncycastleMathEcECPoint_F2mArray:(IOSObjectArray *)preComp {
  self->preComp_ = preComp;
}

- (instancetype)init {
  OrgBouncycastleMathEcWTauNafPreCompInfo_init(self);
  return self;
}

@end

void OrgBouncycastleMathEcWTauNafPreCompInfo_init(OrgBouncycastleMathEcWTauNafPreCompInfo *self) {
  (void) NSObject_init(self);
  self->preComp_ = nil;
}

OrgBouncycastleMathEcWTauNafPreCompInfo *new_OrgBouncycastleMathEcWTauNafPreCompInfo_init() {
  OrgBouncycastleMathEcWTauNafPreCompInfo *self = [OrgBouncycastleMathEcWTauNafPreCompInfo alloc];
  OrgBouncycastleMathEcWTauNafPreCompInfo_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcWTauNafPreCompInfo)
