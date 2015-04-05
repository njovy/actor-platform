//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/util/RandomUtils.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/util/RandomUtils.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/util/RandomUtils.h"
#include "java/util/Random.h"

@interface AMRandomUtils () {
}
@end

BOOL AMRandomUtils_initialized = NO;


#line 8
@implementation AMRandomUtils

JavaUtilRandom * AMRandomUtils_random_;


#line 11
+ (IOSByteArray *)seedWithInt:(jint)size {
  return AMRandomUtils_seedWithInt_(size);
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [AMRandomUtils class]) {
    AMRandomUtils_random_ =
#line 9
    [[JavaUtilRandom alloc] init];
    J2OBJC_SET_INITIALIZED(AMRandomUtils)
  }
}

@end

IOSByteArray *AMRandomUtils_seedWithInt_(jint size) {
  AMRandomUtils_init();
  @synchronized(AMRandomUtils_class_()) {
    
#line 12
    IOSByteArray *res = [IOSByteArray newArrayWithLength:size];
    [((JavaUtilRandom *) nil_chk(AMRandomUtils_random_)) nextBytesWithByteArray:res];
    return res;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMRandomUtils)