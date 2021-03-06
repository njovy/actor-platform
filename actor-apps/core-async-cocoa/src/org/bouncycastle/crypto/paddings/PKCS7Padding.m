//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/paddings/PKCS7Padding.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/bouncycastle/RandomProvider.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/crypto/InvalidCipherTextException.h"
#include "org/bouncycastle/crypto/paddings/PKCS7Padding.h"

@implementation OrgBouncycastleCryptoPaddingsPKCS7Padding

- (void)init__WithBCRandomProvider:(id<BCRandomProvider>)random {
}

- (NSString *)getPaddingName {
  return @"PKCS7";
}

- (jint)addPaddingWithByteArray:(IOSByteArray *)inArg
                        withInt:(jint)inOff {
  jbyte code = (jbyte) (((IOSByteArray *) nil_chk(inArg))->size_ - inOff);
  while (inOff < inArg->size_) {
    *IOSByteArray_GetRef(inArg, inOff) = code;
    inOff++;
  }
  return code;
}

- (jint)padCountWithByteArray:(IOSByteArray *)inArg {
  jint count = IOSByteArray_Get(inArg, ((IOSByteArray *) nil_chk(inArg))->size_ - 1) & (jint) 0xff;
  if (count > inArg->size_ || count == 0) {
    @throw new_OrgBouncycastleCryptoInvalidCipherTextException_initWithNSString_(@"pad block corrupted");
  }
  for (jint i = 1; i <= count; i++) {
    if (IOSByteArray_Get(inArg, inArg->size_ - i) != count) {
      @throw new_OrgBouncycastleCryptoInvalidCipherTextException_initWithNSString_(@"pad block corrupted");
    }
  }
  return count;
}

- (instancetype)init {
  OrgBouncycastleCryptoPaddingsPKCS7Padding_init(self);
  return self;
}

@end

void OrgBouncycastleCryptoPaddingsPKCS7Padding_init(OrgBouncycastleCryptoPaddingsPKCS7Padding *self) {
  (void) NSObject_init(self);
}

OrgBouncycastleCryptoPaddingsPKCS7Padding *new_OrgBouncycastleCryptoPaddingsPKCS7Padding_init() {
  OrgBouncycastleCryptoPaddingsPKCS7Padding *self = [OrgBouncycastleCryptoPaddingsPKCS7Padding alloc];
  OrgBouncycastleCryptoPaddingsPKCS7Padding_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoPaddingsPKCS7Padding)
