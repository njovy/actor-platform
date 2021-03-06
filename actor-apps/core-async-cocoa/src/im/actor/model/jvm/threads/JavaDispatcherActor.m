//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-async/src/main/java/im/actor/model/jvm/threads/JavaDispatcherActor.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/ThreadPriority.h"
#include "im/actor/model/droidkit/actors/dispatch/Dispatch.h"
#include "im/actor/model/droidkit/actors/mailbox/ActorDispatcher.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/jvm/threads/JavaDispatcherActor.h"
#include "im/actor/model/jvm/threads/JavaDispatcherThreads.h"

@interface ImActorModelJvmThreadsJavaDispatcherActor_$1 : NSObject < DKDispatch > {
 @public
  ImActorModelJvmThreadsJavaDispatcherActor *this$0_;
}

- (void)dispatchMessageWithId:(DKEnvelope *)message;

- (instancetype)initWithImActorModelJvmThreadsJavaDispatcherActor:(ImActorModelJvmThreadsJavaDispatcherActor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelJvmThreadsJavaDispatcherActor_$1)

J2OBJC_FIELD_SETTER(ImActorModelJvmThreadsJavaDispatcherActor_$1, this$0_, ImActorModelJvmThreadsJavaDispatcherActor *)

__attribute__((unused)) static void ImActorModelJvmThreadsJavaDispatcherActor_$1_initWithImActorModelJvmThreadsJavaDispatcherActor_(ImActorModelJvmThreadsJavaDispatcherActor_$1 *self, ImActorModelJvmThreadsJavaDispatcherActor *outer$);

__attribute__((unused)) static ImActorModelJvmThreadsJavaDispatcherActor_$1 *new_ImActorModelJvmThreadsJavaDispatcherActor_$1_initWithImActorModelJvmThreadsJavaDispatcherActor_(ImActorModelJvmThreadsJavaDispatcherActor *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelJvmThreadsJavaDispatcherActor_$1)

@implementation ImActorModelJvmThreadsJavaDispatcherActor

- (instancetype)initWithNSString:(NSString *)name
               withDKActorSystem:(DKActorSystem *)actorSystem
                         withInt:(jint)threadsCount
        withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority {
  ImActorModelJvmThreadsJavaDispatcherActor_initWithNSString_withDKActorSystem_withInt_withDKThreadPriorityEnum_(self, name, actorSystem, threadsCount, priority);
  return self;
}

@end

void ImActorModelJvmThreadsJavaDispatcherActor_initWithNSString_withDKActorSystem_withInt_withDKThreadPriorityEnum_(ImActorModelJvmThreadsJavaDispatcherActor *self, NSString *name, DKActorSystem *actorSystem, jint threadsCount, DKThreadPriorityEnum *priority) {
  (void) DKActorDispatcher_initWithNSString_withDKActorSystem_(self, name, actorSystem);
  [self initDispatcherWithDKAbstractDispatcher:new_ImActorModelJvmThreadsJavaDispatcherThreads_initWithNSString_withInt_withDKThreadPriorityEnum_withDKAbstractDispatchQueue_withDKDispatch_withBoolean_([self getName], threadsCount, priority, new_DKMailboxesQueue_init(), new_ImActorModelJvmThreadsJavaDispatcherActor_$1_initWithImActorModelJvmThreadsJavaDispatcherActor_(self), YES)];
}

ImActorModelJvmThreadsJavaDispatcherActor *new_ImActorModelJvmThreadsJavaDispatcherActor_initWithNSString_withDKActorSystem_withInt_withDKThreadPriorityEnum_(NSString *name, DKActorSystem *actorSystem, jint threadsCount, DKThreadPriorityEnum *priority) {
  ImActorModelJvmThreadsJavaDispatcherActor *self = [ImActorModelJvmThreadsJavaDispatcherActor alloc];
  ImActorModelJvmThreadsJavaDispatcherActor_initWithNSString_withDKActorSystem_withInt_withDKThreadPriorityEnum_(self, name, actorSystem, threadsCount, priority);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelJvmThreadsJavaDispatcherActor)

@implementation ImActorModelJvmThreadsJavaDispatcherActor_$1

- (void)dispatchMessageWithId:(DKEnvelope *)message {
  [this$0_ processEnvelopeWithDKEnvelope:message];
}

- (instancetype)initWithImActorModelJvmThreadsJavaDispatcherActor:(ImActorModelJvmThreadsJavaDispatcherActor *)outer$ {
  ImActorModelJvmThreadsJavaDispatcherActor_$1_initWithImActorModelJvmThreadsJavaDispatcherActor_(self, outer$);
  return self;
}

@end

void ImActorModelJvmThreadsJavaDispatcherActor_$1_initWithImActorModelJvmThreadsJavaDispatcherActor_(ImActorModelJvmThreadsJavaDispatcherActor_$1 *self, ImActorModelJvmThreadsJavaDispatcherActor *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelJvmThreadsJavaDispatcherActor_$1 *new_ImActorModelJvmThreadsJavaDispatcherActor_$1_initWithImActorModelJvmThreadsJavaDispatcherActor_(ImActorModelJvmThreadsJavaDispatcherActor *outer$) {
  ImActorModelJvmThreadsJavaDispatcherActor_$1 *self = [ImActorModelJvmThreadsJavaDispatcherActor_$1 alloc];
  ImActorModelJvmThreadsJavaDispatcherActor_$1_initWithImActorModelJvmThreadsJavaDispatcherActor_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelJvmThreadsJavaDispatcherActor_$1)
