//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/messages/DialogsActor.java
//

#ifndef _ImActorModelModulesMessagesDialogsActor_H_
#define _ImActorModelModulesMessagesDialogsActor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@class AMAbsContent;
@class AMGroup;
@class AMMessage;
@class AMMessageStateEnum;
@class AMPeer;
@class AMUser;
@class ImActorModelModulesModules;
@protocol JavaUtilList;

@interface ImActorModelModulesMessagesDialogsActor : ImActorModelModulesUtilsModuleActor

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_initWithImActorModelModulesModules_(ImActorModelModulesMessagesDialogsActor *self, ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor *new_ImActorModelModulesMessagesDialogsActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor)

@interface ImActorModelModulesMessagesDialogsActor_InMessage : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                 withAMMessage:(AMMessage *)message;

- (AMMessage *)getMessage;

- (AMPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_InMessage)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_InMessage_initWithAMPeer_withAMMessage_(ImActorModelModulesMessagesDialogsActor_InMessage *self, AMPeer *peer, AMMessage *message);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_InMessage *new_ImActorModelModulesMessagesDialogsActor_InMessage_initWithAMPeer_withAMMessage_(AMPeer *peer, AMMessage *message) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_InMessage)

@interface ImActorModelModulesMessagesDialogsActor_UserChanged : NSObject

#pragma mark Public

- (instancetype)initWithAMUser:(AMUser *)user;

- (AMUser *)getUser;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_UserChanged)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_UserChanged_initWithAMUser_(ImActorModelModulesMessagesDialogsActor_UserChanged *self, AMUser *user);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_UserChanged *new_ImActorModelModulesMessagesDialogsActor_UserChanged_initWithAMUser_(AMUser *user) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_UserChanged)

@interface ImActorModelModulesMessagesDialogsActor_GroupChanged : NSObject

#pragma mark Public

- (instancetype)initWithAMGroup:(AMGroup *)group;

- (AMGroup *)getGroup;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_GroupChanged)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_GroupChanged_initWithAMGroup_(ImActorModelModulesMessagesDialogsActor_GroupChanged *self, AMGroup *group);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_GroupChanged *new_ImActorModelModulesMessagesDialogsActor_GroupChanged_initWithAMGroup_(AMGroup *group) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_GroupChanged)

@interface ImActorModelModulesMessagesDialogsActor_ChatClear : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer;

- (AMPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_ChatClear)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_ChatClear_initWithAMPeer_(ImActorModelModulesMessagesDialogsActor_ChatClear *self, AMPeer *peer);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_ChatClear *new_ImActorModelModulesMessagesDialogsActor_ChatClear_initWithAMPeer_(AMPeer *peer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_ChatClear)

@interface ImActorModelModulesMessagesDialogsActor_ChatDelete : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer;

- (AMPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_ChatDelete)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_ChatDelete_initWithAMPeer_(ImActorModelModulesMessagesDialogsActor_ChatDelete *self, AMPeer *peer);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_ChatDelete *new_ImActorModelModulesMessagesDialogsActor_ChatDelete_initWithAMPeer_(AMPeer *peer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_ChatDelete)

@interface ImActorModelModulesMessagesDialogsActor_MessageStateChanged : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)rid
        withAMMessageStateEnum:(AMMessageStateEnum *)state;

- (AMPeer *)getPeer;

- (jlong)getRid;

- (AMMessageStateEnum *)getState;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_MessageStateChanged)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_MessageStateChanged_initWithAMPeer_withLong_withAMMessageStateEnum_(ImActorModelModulesMessagesDialogsActor_MessageStateChanged *self, AMPeer *peer, jlong rid, AMMessageStateEnum *state);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_MessageStateChanged *new_ImActorModelModulesMessagesDialogsActor_MessageStateChanged_initWithAMPeer_withLong_withAMMessageStateEnum_(AMPeer *peer, jlong rid, AMMessageStateEnum *state) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_MessageStateChanged)

@interface ImActorModelModulesMessagesDialogsActor_MessageContentChanged : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)rid
              withAMAbsContent:(AMAbsContent *)content;

- (AMAbsContent *)getContent;

- (AMPeer *)getPeer;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_MessageContentChanged)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_MessageContentChanged_initWithAMPeer_withLong_withAMAbsContent_(ImActorModelModulesMessagesDialogsActor_MessageContentChanged *self, AMPeer *peer, jlong rid, AMAbsContent *content);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_MessageContentChanged *new_ImActorModelModulesMessagesDialogsActor_MessageContentChanged_initWithAMPeer_withLong_withAMAbsContent_(AMPeer *peer, jlong rid, AMAbsContent *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_MessageContentChanged)

@interface ImActorModelModulesMessagesDialogsActor_MessageDeleted : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                 withAMMessage:(AMMessage *)topMessage;

- (AMPeer *)getPeer;

- (AMMessage *)getTopMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_MessageDeleted)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_MessageDeleted_initWithAMPeer_withAMMessage_(ImActorModelModulesMessagesDialogsActor_MessageDeleted *self, AMPeer *peer, AMMessage *topMessage);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_MessageDeleted *new_ImActorModelModulesMessagesDialogsActor_MessageDeleted_initWithAMPeer_withAMMessage_(AMPeer *peer, AMMessage *topMessage) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_MessageDeleted)

@interface ImActorModelModulesMessagesDialogsActor_HistoryLoaded : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)history;

- (id<JavaUtilList>)getHistory;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_HistoryLoaded)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_HistoryLoaded_initWithJavaUtilList_(ImActorModelModulesMessagesDialogsActor_HistoryLoaded *self, id<JavaUtilList> history);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_HistoryLoaded *new_ImActorModelModulesMessagesDialogsActor_HistoryLoaded_initWithJavaUtilList_(id<JavaUtilList> history) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_HistoryLoaded)

@interface ImActorModelModulesMessagesDialogsActor_CounterChanged : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                       withInt:(jint)count;

- (jint)getCount;

- (AMPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsActor_CounterChanged)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsActor_CounterChanged_initWithAMPeer_withInt_(ImActorModelModulesMessagesDialogsActor_CounterChanged *self, AMPeer *peer, jint count);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsActor_CounterChanged *new_ImActorModelModulesMessagesDialogsActor_CounterChanged_initWithAMPeer_withInt_(AMPeer *peer, jint count) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsActor_CounterChanged)

#endif // _ImActorModelModulesMessagesDialogsActor_H_
