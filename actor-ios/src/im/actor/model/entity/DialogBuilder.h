//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/DialogBuilder.java
//

#ifndef _AMDialogBuilder_H_
#define _AMDialogBuilder_H_

@class AMAvatar;
@class AMDialog;
@class AMDialog_ContentTypeEnum;
@class AMMessageStateEnum;
@class AMPeer;

#include "J2ObjC_header.h"

@interface AMDialogBuilder : NSObject {
}

- (instancetype)init;

- (instancetype)initWithAMDialog:(AMDialog *)dialog;

- (AMDialogBuilder *)setPeerWithAMPeer:(AMPeer *)peer;

- (AMDialogBuilder *)setSortKeyWithLong:(jlong)sortKey;

- (AMDialogBuilder *)setDialogTitleWithNSString:(NSString *)dialogTitle;

- (AMDialogBuilder *)setUnreadCountWithInt:(jint)unreadCount;

- (AMDialogBuilder *)setRidWithLong:(jlong)rid;

- (AMDialogBuilder *)setMessageTypeWithAMDialog_ContentTypeEnum:(AMDialog_ContentTypeEnum *)messageType;

- (AMDialogBuilder *)setTextWithNSString:(NSString *)text;

- (AMDialogBuilder *)setStatusWithAMMessageStateEnum:(AMMessageStateEnum *)status;

- (AMDialogBuilder *)setSenderIdWithInt:(jint)senderId;

- (AMDialogBuilder *)setTimeWithLong:(jlong)time;

- (AMDialogBuilder *)setRelatedUidWithInt:(jint)relatedUid;

- (AMDialogBuilder *)setDialogAvatarWithAMAvatar:(AMAvatar *)avatar;

- (AMDialog *)createDialog;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDialogBuilder)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMDialogBuilder ImActorModelEntityDialogBuilder;

J2OBJC_TYPE_LITERAL_HEADER(AMDialogBuilder)

#endif // _AMDialogBuilder_H_