//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/mvvm/DisplayList.java
//

#ifndef _AMDisplayList_H_
#define _AMDisplayList_H_

#include "J2ObjC_header.h"

@protocol AMDisplayList_Hook;
@protocol AMDisplayList_Listener;
@protocol AMDisplayList_Modification;
@protocol JavaLangRunnable;
@protocol JavaUtilList;

@interface AMDisplayList : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAMDisplayList_Hook:(id<AMDisplayList_Hook>)hook;

- (instancetype)initWithAMDisplayList_Hook:(id<AMDisplayList_Hook>)hook
                          withJavaUtilList:(id<JavaUtilList>)defaultValues;

- (void)addListenerWithAMDisplayList_Listener:(id<AMDisplayList_Listener>)listener;

- (void)editListWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)mod;

- (void)editListWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)mod
                          withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter;

- (id)getItemWithInt:(jint)index;

- (jint)getSize;

- (void)removeListenerWithAMDisplayList_Listener:(id<AMDisplayList_Listener>)listener;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList)

FOUNDATION_EXPORT void AMDisplayList_init(AMDisplayList *self);

FOUNDATION_EXPORT AMDisplayList *new_AMDisplayList_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMDisplayList_initWithAMDisplayList_Hook_(AMDisplayList *self, id<AMDisplayList_Hook> hook);

FOUNDATION_EXPORT AMDisplayList *new_AMDisplayList_initWithAMDisplayList_Hook_(id<AMDisplayList_Hook> hook) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMDisplayList_initWithAMDisplayList_Hook_withJavaUtilList_(AMDisplayList *self, id<AMDisplayList_Hook> hook, id<JavaUtilList> defaultValues);

FOUNDATION_EXPORT AMDisplayList *new_AMDisplayList_initWithAMDisplayList_Hook_withJavaUtilList_(id<AMDisplayList_Hook> hook, id<JavaUtilList> defaultValues) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList)

typedef AMDisplayList ImActorModelMvvmDisplayList;

@protocol AMDisplayList_Modification < NSObject, JavaObject >

- (void)modifyWithJavaUtilList:(id<JavaUtilList>)sourceList;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_Modification)

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_Modification)

@protocol AMDisplayList_Hook < NSObject, JavaObject >

- (void)beforeDisplayWithJavaUtilList:(id<JavaUtilList>)list;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_Hook)

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_Hook)

@protocol AMDisplayList_Listener < NSObject, JavaObject >

- (void)onCollectionChanged;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_Listener)

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_Listener)

#endif // _AMDisplayList_H_