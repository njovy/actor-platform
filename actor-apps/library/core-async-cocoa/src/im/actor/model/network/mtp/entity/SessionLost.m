//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/network/mtp/entity/SessionLost.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/SessionLost.h"
#include "java/io/IOException.h"

@implementation MTSessionLost

- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTSessionLost_initWithBSDataInput_(self, stream);
  return self;
}

- (instancetype)init {
  MTSessionLost_init(self);
  return self;
}

- (jbyte)getHeader {
  return MTSessionLost_HEADER;
}

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
}

- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
}

@end

void MTSessionLost_initWithBSDataInput_(MTSessionLost *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}

MTSessionLost *new_MTSessionLost_initWithBSDataInput_(BSDataInput *stream) {
  MTSessionLost *self = [MTSessionLost alloc];
  MTSessionLost_initWithBSDataInput_(self, stream);
  return self;
}

void MTSessionLost_init(MTSessionLost *self) {
  (void) MTProtoStruct_init(self);
}

MTSessionLost *new_MTSessionLost_init() {
  MTSessionLost *self = [MTSessionLost alloc];
  MTSessionLost_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTSessionLost)