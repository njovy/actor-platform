//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/compat/ObsoleteGroupMember.java
//

#ifndef _ImActorModelEntityCompatObsoleteGroupMember_H_
#define _ImActorModelEntityCompatObsoleteGroupMember_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface ImActorModelEntityCompatObsoleteGroupMember : BSBserObject

#pragma mark Public

- (instancetype)initWithBSBserValues:(BSBserValues *)values;

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (jlong)getInviteDate;

- (jint)getInviterUid;

- (jint)getUid;

- (jboolean)isAdministrator;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelEntityCompatObsoleteGroupMember)

FOUNDATION_EXPORT void ImActorModelEntityCompatObsoleteGroupMember_initWithByteArray_(ImActorModelEntityCompatObsoleteGroupMember *self, IOSByteArray *data);

FOUNDATION_EXPORT ImActorModelEntityCompatObsoleteGroupMember *new_ImActorModelEntityCompatObsoleteGroupMember_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelEntityCompatObsoleteGroupMember_initWithBSBserValues_(ImActorModelEntityCompatObsoleteGroupMember *self, BSBserValues *values);

FOUNDATION_EXPORT ImActorModelEntityCompatObsoleteGroupMember *new_ImActorModelEntityCompatObsoleteGroupMember_initWithBSBserValues_(BSBserValues *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelEntityCompatObsoleteGroupMember)

#endif // _ImActorModelEntityCompatObsoleteGroupMember_H_
