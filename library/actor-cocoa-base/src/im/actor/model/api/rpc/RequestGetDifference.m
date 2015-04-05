//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetDifference.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetDifference.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestGetDifference.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestGetDifference () {
 @public
  jint seq_;
  IOSByteArray *state_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestGetDifference, state_, IOSByteArray *)


#line 20
@implementation ImActorModelApiRpcRequestGetDifference


#line 23
+ (ImActorModelApiRpcRequestGetDifference *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestGetDifference_fromBytesWithByteArray_(data);
}


#line 30
- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state {
  if (self = [super init]) {
    
#line 31
    self->seq_ = seq;
    
#line 32
    self->state_ = state;
  }
  return self;
}


#line 35
- (instancetype)init {
  return [super init];
}

- (jint)getSeq {
  
#line 40
  return self->seq_;
}


#line 43
- (IOSByteArray *)getState {
  
#line 44
  return self->state_;
}


#line 48
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->seq_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->state_ = [values getBytesWithInt:2];
}


#line 54
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 55
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:2 withByteArray:self->state_];
}

- (NSString *)description {
  NSString *res = @"rpc GetDifference{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"seq=", self->seq_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", state=", BSUtils_byteArrayToStringCompactWithByteArray_(self->state_)));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 73
  return ImActorModelApiRpcRequestGetDifference_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestGetDifference *)other {
  [super copyAllFieldsTo:other];
  other->seq_ = seq_;
  other->state_ = state_;
}

@end

ImActorModelApiRpcRequestGetDifference *ImActorModelApiRpcRequestGetDifference_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestGetDifference_init();
  
#line 24
  return ((ImActorModelApiRpcRequestGetDifference *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestGetDifference alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestGetDifference)