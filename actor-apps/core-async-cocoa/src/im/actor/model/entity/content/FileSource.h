//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/content/FileSource.java
//

#ifndef _AMFileSource_H_
#define _AMFileSource_H_

#include "J2ObjC_header.h"

@interface AMFileSource : NSObject

#pragma mark Public

- (instancetype)init;

- (NSString *)getFileName;

- (jint)getSize;

@end

J2OBJC_EMPTY_STATIC_INIT(AMFileSource)

FOUNDATION_EXPORT void AMFileSource_init(AMFileSource *self);

J2OBJC_TYPE_LITERAL_HEADER(AMFileSource)

typedef AMFileSource ImActorModelEntityContentFileSource;

#endif // _AMFileSource_H_
