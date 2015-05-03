//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/notifications/entity/PendingStorage.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/notifications/entity/PendingStorage.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/modules/notifications/entity/PendingNotification.h"
#include "im/actor/model/modules/notifications/entity/PendingStorage.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelModulesNotificationsEntityPendingStorage () {
 @public
  id<JavaUtilList> notifications_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesNotificationsEntityPendingStorage, notifications_, id<JavaUtilList>)


#line 15
@implementation ImActorModelModulesNotificationsEntityPendingStorage

+ (ImActorModelModulesNotificationsEntityPendingStorage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelModulesNotificationsEntityPendingStorage_fromBytesWithByteArray_(data);
}


#line 23
- (instancetype)init {
  ImActorModelModulesNotificationsEntityPendingStorage_init(self);
  return self;
}


#line 27
- (id<JavaUtilList>)getNotifications {
  return notifications_;
}


#line 32
- (void)parseWithBSBserValues:(BSBserValues *)values {
  jint count = [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1];
  if (count > 0) {
    JavaUtilArrayList *stubs = new_JavaUtilArrayList_init();
    for (jint i = 0; i < count; i++) {
      [stubs addWithId:new_ImActorModelModulesNotificationsEntityPendingNotification_init()];
    }
    
#line 40
    notifications_ = [values getRepeatedObjWithInt:1 withJavaUtilList:stubs];
  }
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:notifications_];
}

@end


#line 17
ImActorModelModulesNotificationsEntityPendingStorage *ImActorModelModulesNotificationsEntityPendingStorage_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelModulesNotificationsEntityPendingStorage_initialize();
  
#line 18
  return ((ImActorModelModulesNotificationsEntityPendingStorage *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelModulesNotificationsEntityPendingStorage_init(), data));
}


#line 23
void ImActorModelModulesNotificationsEntityPendingStorage_init(ImActorModelModulesNotificationsEntityPendingStorage *self) {
  (void) BSBserObject_init(self);
  
#line 24
  self->notifications_ = new_JavaUtilArrayList_init();
}


#line 23
ImActorModelModulesNotificationsEntityPendingStorage *new_ImActorModelModulesNotificationsEntityPendingStorage_init() {
  ImActorModelModulesNotificationsEntityPendingStorage *self = [ImActorModelModulesNotificationsEntityPendingStorage alloc];
  ImActorModelModulesNotificationsEntityPendingStorage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesNotificationsEntityPendingStorage)