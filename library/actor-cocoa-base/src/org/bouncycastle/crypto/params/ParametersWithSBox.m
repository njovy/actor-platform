//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/crypto/params/ParametersWithSBox.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/crypto/params/ParametersWithSBox.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/params/ParametersWithSBox.h"

@interface OrgBouncycastleCryptoParamsParametersWithSBox () {
 @public
  id<OrgBouncycastleCryptoCipherParameters> parameters_;
  IOSByteArray *sBox_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsParametersWithSBox, parameters_, id<OrgBouncycastleCryptoCipherParameters>)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsParametersWithSBox, sBox_, IOSByteArray *)


#line 5
@implementation OrgBouncycastleCryptoParamsParametersWithSBox


#line 11
- (instancetype)initWithOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)parameters
                                                withByteArray:(IOSByteArray *)sBox {
  if (self = [super init]) {
    
#line 15
    self->parameters_ = parameters;
    
#line 16
    self->sBox_ = sBox;
  }
  return self;
}


#line 19
- (IOSByteArray *)getSBox {
  
#line 21
  return sBox_;
}


#line 24
- (id<OrgBouncycastleCryptoCipherParameters>)getParameters {
  
#line 26
  return parameters_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsParametersWithSBox *)other {
  [super copyAllFieldsTo:other];
  other->parameters_ = parameters_;
  other->sBox_ = sBox_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsParametersWithSBox)