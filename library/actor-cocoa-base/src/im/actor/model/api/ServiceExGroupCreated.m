//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExGroupCreated.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExGroupCreated.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ServiceExGroupCreated.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"


#line 19
@implementation ImActorModelApiServiceExGroupCreated


#line 22
- (instancetype)init {
  return [super init];
}

- (jint)getHeader {
  
#line 27
  return 4;
}


#line 31
- (void)parseWithBSBserValues:(BSBserValues *)values {
}


#line 35
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
}

- (NSString *)description {
  
#line 40
  NSString *res = @"struct ServiceExGroupCreated{";
  res = JreStrcat("$C", res, '}');
  return res;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceExGroupCreated)