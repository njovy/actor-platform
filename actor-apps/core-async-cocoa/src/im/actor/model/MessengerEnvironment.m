//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-async/src/main/java/im/actor/model/MessengerEnvironment.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/MessengerEnvironment.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void AMMessengerEnvironmentEnum_initWithNSString_withInt_(AMMessengerEnvironmentEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static AMMessengerEnvironmentEnum *new_AMMessengerEnvironmentEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(AMMessengerEnvironmentEnum)

AMMessengerEnvironmentEnum *AMMessengerEnvironmentEnum_values_[3];

@implementation AMMessengerEnvironmentEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  AMMessengerEnvironmentEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *AMMessengerEnvironmentEnum_values() {
  AMMessengerEnvironmentEnum_initialize();
  return [IOSObjectArray arrayWithObjects:AMMessengerEnvironmentEnum_values_ count:3 type:AMMessengerEnvironmentEnum_class_()];
}

+ (IOSObjectArray *)values {
  return AMMessengerEnvironmentEnum_values();
}

+ (AMMessengerEnvironmentEnum *)valueOfWithNSString:(NSString *)name {
  return AMMessengerEnvironmentEnum_valueOfWithNSString_(name);
}

AMMessengerEnvironmentEnum *AMMessengerEnvironmentEnum_valueOfWithNSString_(NSString *name) {
  AMMessengerEnvironmentEnum_initialize();
  for (int i = 0; i < 3; i++) {
    AMMessengerEnvironmentEnum *e = AMMessengerEnvironmentEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [AMMessengerEnvironmentEnum class]) {
    AMMessengerEnvironmentEnum_GENERAL = new_AMMessengerEnvironmentEnum_initWithNSString_withInt_(@"GENERAL", 0);
    AMMessengerEnvironmentEnum_ANDROID = new_AMMessengerEnvironmentEnum_initWithNSString_withInt_(@"ANDROID", 1);
    AMMessengerEnvironmentEnum_IOS = new_AMMessengerEnvironmentEnum_initWithNSString_withInt_(@"IOS", 2);
    J2OBJC_SET_INITIALIZED(AMMessengerEnvironmentEnum)
  }
}

@end

void AMMessengerEnvironmentEnum_initWithNSString_withInt_(AMMessengerEnvironmentEnum *self, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

AMMessengerEnvironmentEnum *new_AMMessengerEnvironmentEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  AMMessengerEnvironmentEnum *self = [AMMessengerEnvironmentEnum alloc];
  AMMessengerEnvironmentEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMMessengerEnvironmentEnum)
