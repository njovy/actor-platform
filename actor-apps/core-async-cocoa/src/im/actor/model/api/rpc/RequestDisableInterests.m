//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestDisableInterests.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestDisableInterests.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface APRequestDisableInterests () {
 @public
  id<JavaUtilList> interests_;
}

@end

J2OBJC_FIELD_SETTER(APRequestDisableInterests, interests_, id<JavaUtilList>)

@implementation APRequestDisableInterests

+ (APRequestDisableInterests *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestDisableInterests_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)interests {
  APRequestDisableInterests_initWithJavaUtilList_(self, interests);
  return self;
}

- (instancetype)init {
  APRequestDisableInterests_init(self);
  return self;
}

- (id<JavaUtilList>)getInterests {
  return self->interests_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->interests_ = [((BSBserValues *) nil_chk(values)) getRepeatedIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedIntWithInt:1 withJavaUtilList:self->interests_];
}

- (NSString *)description {
  NSString *res = @"rpc DisableInterests{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"interests=", self->interests_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestDisableInterests_HEADER;
}

@end

APRequestDisableInterests *APRequestDisableInterests_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestDisableInterests_initialize();
  return ((APRequestDisableInterests *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestDisableInterests_init(), data));
}

void APRequestDisableInterests_initWithJavaUtilList_(APRequestDisableInterests *self, id<JavaUtilList> interests) {
  (void) APRequest_init(self);
  self->interests_ = interests;
}

APRequestDisableInterests *new_APRequestDisableInterests_initWithJavaUtilList_(id<JavaUtilList> interests) {
  APRequestDisableInterests *self = [APRequestDisableInterests alloc];
  APRequestDisableInterests_initWithJavaUtilList_(self, interests);
  return self;
}

void APRequestDisableInterests_init(APRequestDisableInterests *self) {
  (void) APRequest_init(self);
}

APRequestDisableInterests *new_APRequestDisableInterests_init() {
  APRequestDisableInterests *self = [APRequestDisableInterests alloc];
  APRequestDisableInterests_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestDisableInterests)
