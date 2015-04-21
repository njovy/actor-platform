//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/storage/BaseAsyncStorageProvider.java
//

#ifndef _AMBaseAsyncStorageProvider_H_
#define _AMBaseAsyncStorageProvider_H_

@class AMPeer;
@protocol DKListEngine;
@protocol DKListStorage;

#include "J2ObjC_header.h"
#include "im/actor/model/StorageProvider.h"

@interface AMBaseAsyncStorageProvider : NSObject < AMStorageProvider > {
}

- (id<DKListEngine>)createContactsListWithDKListStorage:(id<DKListStorage>)storage;

- (id<DKListEngine>)createDialogsListWithDKListStorage:(id<DKListStorage>)storage;

- (id<DKListEngine>)createMessagesListWithAMPeer:(AMPeer *)peer
                               withDKListStorage:(id<DKListStorage>)storage;

- (id<DKListEngine>)createSearchListWithDKListStorage:(id<DKListStorage>)storage;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(AMBaseAsyncStorageProvider)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMBaseAsyncStorageProvider ImActorModelStorageBaseAsyncStorageProvider;

J2OBJC_TYPE_LITERAL_HEADER(AMBaseAsyncStorageProvider)

#endif // _AMBaseAsyncStorageProvider_H_