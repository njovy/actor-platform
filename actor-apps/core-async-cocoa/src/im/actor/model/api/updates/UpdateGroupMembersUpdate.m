//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateGroupMembersUpdate.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/api/updates/UpdateGroupMembersUpdate.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface APUpdateGroupMembersUpdate () {
 @public
  jint groupId_;
  id<JavaUtilList> members_;
}

@end

J2OBJC_FIELD_SETTER(APUpdateGroupMembersUpdate, members_, id<JavaUtilList>)

@implementation APUpdateGroupMembersUpdate

+ (APUpdateGroupMembersUpdate *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateGroupMembersUpdate_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)groupId
           withJavaUtilList:(id<JavaUtilList>)members {
  APUpdateGroupMembersUpdate_initWithInt_withJavaUtilList_(self, groupId, members);
  return self;
}

- (instancetype)init {
  APUpdateGroupMembersUpdate_init(self);
  return self;
}

- (jint)getGroupId {
  return self->groupId_;
}

- (id<JavaUtilList>)getMembers {
  return self->members_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  id<JavaUtilList> _members = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:2]; i++) {
    [_members addWithId:new_APMember_init()];
  }
  self->members_ = [values getRepeatedObjWithInt:2 withJavaUtilList:_members];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeRepeatedObjWithInt:2 withJavaUtilList:self->members_];
}

- (NSString *)description {
  NSString *res = @"update GroupMembersUpdate{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", members=", self->members_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateGroupMembersUpdate_HEADER;
}

@end

APUpdateGroupMembersUpdate *APUpdateGroupMembersUpdate_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateGroupMembersUpdate_initialize();
  return ((APUpdateGroupMembersUpdate *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateGroupMembersUpdate_init(), data));
}

void APUpdateGroupMembersUpdate_initWithInt_withJavaUtilList_(APUpdateGroupMembersUpdate *self, jint groupId, id<JavaUtilList> members) {
  (void) APUpdate_init(self);
  self->groupId_ = groupId;
  self->members_ = members;
}

APUpdateGroupMembersUpdate *new_APUpdateGroupMembersUpdate_initWithInt_withJavaUtilList_(jint groupId, id<JavaUtilList> members) {
  APUpdateGroupMembersUpdate *self = [APUpdateGroupMembersUpdate alloc];
  APUpdateGroupMembersUpdate_initWithInt_withJavaUtilList_(self, groupId, members);
  return self;
}

void APUpdateGroupMembersUpdate_init(APUpdateGroupMembersUpdate *self) {
  (void) APUpdate_init(self);
}

APUpdateGroupMembersUpdate *new_APUpdateGroupMembersUpdate_init() {
  APUpdateGroupMembersUpdate *self = [APUpdateGroupMembersUpdate alloc];
  APUpdateGroupMembersUpdate_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateGroupMembersUpdate)
