//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateGroupTitleChanged.java
//

#ifndef _APUpdateGroupTitleChanged_H_
#define _APUpdateGroupTitleChanged_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APUpdateGroupTitleChanged_HEADER 38

@interface APUpdateGroupTitleChanged : APUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
               withNSString:(NSString *)title
                   withLong:(jlong)date;

+ (APUpdateGroupTitleChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getGroupId;

- (jint)getHeaderKey;

- (jlong)getRid;

- (NSString *)getTitle;

- (jint)getUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APUpdateGroupTitleChanged)

J2OBJC_STATIC_FIELD_GETTER(APUpdateGroupTitleChanged, HEADER, jint)

FOUNDATION_EXPORT APUpdateGroupTitleChanged *APUpdateGroupTitleChanged_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APUpdateGroupTitleChanged_initWithInt_withLong_withInt_withNSString_withLong_(APUpdateGroupTitleChanged *self, jint groupId, jlong rid, jint uid, NSString *title, jlong date);

FOUNDATION_EXPORT APUpdateGroupTitleChanged *new_APUpdateGroupTitleChanged_initWithInt_withLong_withInt_withNSString_withLong_(jint groupId, jlong rid, jint uid, NSString *title, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APUpdateGroupTitleChanged_init(APUpdateGroupTitleChanged *self);

FOUNDATION_EXPORT APUpdateGroupTitleChanged *new_APUpdateGroupTitleChanged_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APUpdateGroupTitleChanged)

typedef APUpdateGroupTitleChanged ImActorModelApiUpdatesUpdateGroupTitleChanged;

#endif // _APUpdateGroupTitleChanged_H_
