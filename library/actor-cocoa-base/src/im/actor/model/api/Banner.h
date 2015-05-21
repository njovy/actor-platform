//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Banner.java
//

#ifndef _ImActorModelApiBanner_H_
#define _ImActorModelApiBanner_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;

@interface ImActorModelApiBanner : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)id_
                    withInt:(jint)width
                    withInt:(jint)height
               withNSString:(NSString *)bannerUrl
               withNSString:(NSString *)adUrl
                    withInt:(jint)adCost;

- (jint)getAdCost;

- (NSString *)getAdUrl;

- (NSString *)getBannerUrl;

- (jint)getHeight;

- (jint)getId;

- (jint)getWidth;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiBanner)

FOUNDATION_EXPORT void ImActorModelApiBanner_initWithInt_withInt_withInt_withNSString_withNSString_withInt_(ImActorModelApiBanner *self, jint id_, jint width, jint height, NSString *bannerUrl, NSString *adUrl, jint adCost);

FOUNDATION_EXPORT ImActorModelApiBanner *new_ImActorModelApiBanner_initWithInt_withInt_withInt_withNSString_withNSString_withInt_(jint id_, jint width, jint height, NSString *bannerUrl, NSString *adUrl, jint adCost) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiBanner_init(ImActorModelApiBanner *self);

FOUNDATION_EXPORT ImActorModelApiBanner *new_ImActorModelApiBanner_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiBanner)

#endif // _ImActorModelApiBanner_H_