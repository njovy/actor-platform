//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/ec/GLVMultiplier.java
//


#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/AbstractECMultiplier.h"
#include "org/bouncycastle/math/ec/ECAlgorithms.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/ECPointMap.h"
#include "org/bouncycastle/math/ec/GLVMultiplier.h"
#include "org/bouncycastle/math/ec/endo/GLVEndomorphism.h"

@implementation OrgBouncycastleMathEcGLVMultiplier

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
        withOrgBouncycastleMathEcEndoGLVEndomorphism:(id<OrgBouncycastleMathEcEndoGLVEndomorphism>)glvEndomorphism {
  OrgBouncycastleMathEcGLVMultiplier_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVEndomorphism_(self, curve, glvEndomorphism);
  return self;
}

- (OrgBouncycastleMathEcECPoint *)multiplyPositiveWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                            withJavaMathBigInteger:(JavaMathBigInteger *)k {
  if (![((OrgBouncycastleMathEcECCurve *) nil_chk(curve_)) equalsWithOrgBouncycastleMathEcECCurve:[((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve]]) {
    @throw new_JavaLangIllegalStateException_init();
  }
  JavaMathBigInteger *n = [((OrgBouncycastleMathEcECCurve *) nil_chk([p getCurve])) getOrder];
  IOSObjectArray *ab = [((id<OrgBouncycastleMathEcEndoGLVEndomorphism>) nil_chk(glvEndomorphism_)) decomposeScalarWithJavaMathBigInteger:[((JavaMathBigInteger *) nil_chk(k)) modWithJavaMathBigInteger:n]];
  JavaMathBigInteger *a = IOSObjectArray_Get(nil_chk(ab), 0), *b = IOSObjectArray_Get(ab, 1);
  id<OrgBouncycastleMathEcECPointMap> pointMap = [glvEndomorphism_ getPointMap];
  if ([glvEndomorphism_ hasEfficientPointMap]) {
    return OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPointMap_withJavaMathBigInteger_(p, a, pointMap, b);
  }
  return OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(p, a, [((id<OrgBouncycastleMathEcECPointMap>) nil_chk(pointMap)) mapWithOrgBouncycastleMathEcECPoint:p], b);
}

@end

void OrgBouncycastleMathEcGLVMultiplier_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVEndomorphism_(OrgBouncycastleMathEcGLVMultiplier *self, OrgBouncycastleMathEcECCurve *curve, id<OrgBouncycastleMathEcEndoGLVEndomorphism> glvEndomorphism) {
  (void) OrgBouncycastleMathEcAbstractECMultiplier_init(self);
  if (curve == nil || [curve getOrder] == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Need curve with known group order");
  }
  self->curve_ = curve;
  self->glvEndomorphism_ = glvEndomorphism;
}

OrgBouncycastleMathEcGLVMultiplier *new_OrgBouncycastleMathEcGLVMultiplier_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVEndomorphism_(OrgBouncycastleMathEcECCurve *curve, id<OrgBouncycastleMathEcEndoGLVEndomorphism> glvEndomorphism) {
  OrgBouncycastleMathEcGLVMultiplier *self = [OrgBouncycastleMathEcGLVMultiplier alloc];
  OrgBouncycastleMathEcGLVMultiplier_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVEndomorphism_(self, curve, glvEndomorphism);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcGLVMultiplier)
