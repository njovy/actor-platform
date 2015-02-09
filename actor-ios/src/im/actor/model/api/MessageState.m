//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/MessageState.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/MessageState.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"

@interface ImActorModelApiMessageStateEnum () {
 @public
  jint value_;
}
@end

BOOL ImActorModelApiMessageStateEnum_initialized = NO;

ImActorModelApiMessageStateEnum *ImActorModelApiMessageStateEnum_values_[3];

@implementation ImActorModelApiMessageStateEnum

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  if (self = [super initWithNSString:__name withInt:__ordinal]) {
    self->value_ = value;
  }
  return self;
}

- (jint)getValue {
  return value_;
}

+ (ImActorModelApiMessageStateEnum *)parseWithInt:(jint)value {
  return ImActorModelApiMessageStateEnum_parseWithInt_(value);
}

IOSObjectArray *ImActorModelApiMessageStateEnum_values() {
  ImActorModelApiMessageStateEnum_init();
  return [IOSObjectArray arrayWithObjects:ImActorModelApiMessageStateEnum_values_ count:3 type:ImActorModelApiMessageStateEnum_class_()];
}
+ (IOSObjectArray *)values {
  return ImActorModelApiMessageStateEnum_values();
}

+ (ImActorModelApiMessageStateEnum *)valueOfWithNSString:(NSString *)name {
  return ImActorModelApiMessageStateEnum_valueOfWithNSString_(name);
}

ImActorModelApiMessageStateEnum *ImActorModelApiMessageStateEnum_valueOfWithNSString_(NSString *name) {
  ImActorModelApiMessageStateEnum_init();
  for (int i = 0; i < 3; i++) {
    ImActorModelApiMessageStateEnum *e = ImActorModelApiMessageStateEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [ImActorModelApiMessageStateEnum class]) {
    ImActorModelApiMessageStateEnum_SENT = [[ImActorModelApiMessageStateEnum alloc] initWithInt:1 withNSString:@"SENT" withInt:0];
    ImActorModelApiMessageStateEnum_RECEIVED = [[ImActorModelApiMessageStateEnum alloc] initWithInt:2 withNSString:@"RECEIVED" withInt:1];
    ImActorModelApiMessageStateEnum_READ = [[ImActorModelApiMessageStateEnum alloc] initWithInt:3 withNSString:@"READ" withInt:2];
    J2OBJC_SET_INITIALIZED(ImActorModelApiMessageStateEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withNSString:withInt:", "MessageState", NULL, 0x2, NULL },
    { "getValue", NULL, "I", 0x1, NULL },
    { "parseWithInt:", "parse", "Lim.actor.model.api.MessageState;", 0x9, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SENT", "SENT", 0x4019, "Lim.actor.model.api.MessageState;", &ImActorModelApiMessageStateEnum_SENT,  },
    { "RECEIVED", "RECEIVED", 0x4019, "Lim.actor.model.api.MessageState;", &ImActorModelApiMessageStateEnum_RECEIVED,  },
    { "READ", "READ", 0x4019, "Lim.actor.model.api.MessageState;", &ImActorModelApiMessageStateEnum_READ,  },
    { "value_", NULL, 0x2, "I", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.MessageState;"};
  static const J2ObjcClassInfo _ImActorModelApiMessageStateEnum = { 1, "MessageState", "im.actor.model.api", NULL, 0x4011, 3, methods, 4, fields, 1, superclass_type_args};
  return &_ImActorModelApiMessageStateEnum;
}

@end

ImActorModelApiMessageStateEnum *ImActorModelApiMessageStateEnum_parseWithInt_(jint value) {
  ImActorModelApiMessageStateEnum_init();
  switch (value) {
    case 1:
    return ImActorModelApiMessageStateEnum_SENT;
    case 2:
    return ImActorModelApiMessageStateEnum_RECEIVED;
    case 3:
    return ImActorModelApiMessageStateEnum_READ;
  }
  @throw [[[JavaIoIOException alloc] init] autorelease];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiMessageStateEnum)