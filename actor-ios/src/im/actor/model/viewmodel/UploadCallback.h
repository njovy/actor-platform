//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/viewmodel/UploadCallback.java
//

#ifndef _AMUploadCallback_H_
#define _AMUploadCallback_H_

#include "J2ObjC_header.h"

@protocol AMUploadCallback < NSObject, JavaObject >

- (void)onNotUploading;

- (void)onUploadingWithFloat:(jfloat)progress;

- (void)onUploaded;

@end

J2OBJC_EMPTY_STATIC_INIT(AMUploadCallback)

#define ImActorModelViewmodelUploadCallback AMUploadCallback

J2OBJC_TYPE_LITERAL_HEADER(AMUploadCallback)

#endif // _AMUploadCallback_H_