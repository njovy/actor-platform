//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/util/ActorTrace.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorScope.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/util/ActorTrace.h"
#include "java/lang/Exception.h"

#define AMActorTrace_PROCESS_THRESHOLD 300

static NSString *AMActorTrace_TAG_ = @"ACTOR_SYSTEM";
J2OBJC_STATIC_FIELD_GETTER(AMActorTrace, TAG_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(AMActorTrace, PROCESS_THRESHOLD, jint)

@implementation AMActorTrace

- (void)onEnvelopeDeliveredWithDKEnvelope:(DKEnvelope *)envelope {
}

- (void)onEnvelopeProcessedWithDKEnvelope:(DKEnvelope *)envelope
                                 withLong:(jlong)duration {
  if (duration > AMActorTrace_PROCESS_THRESHOLD) {
    AMLog_wWithNSString_withNSString_(AMActorTrace_TAG_, JreStrcat("$$$@C", @"Too long ", [((DKActorScope *) nil_chk([((DKEnvelope *) nil_chk(envelope)) getScope])) getPath], @" {", [envelope getMessage], '}'));
  }
}

- (void)onDropWithDKActorRef:(DKActorRef *)sender
                      withId:(id)message
                 withDKActor:(DKActor *)actor {
  AMLog_wWithNSString_withNSString_(AMActorTrace_TAG_, JreStrcat("$@", @"Drop: ", message));
}

- (void)onDeadLetterWithDKActorRef:(DKActorRef *)receiver
                            withId:(id)message {
  AMLog_wWithNSString_withNSString_(AMActorTrace_TAG_, JreStrcat("$@", @"Dead Letter: ", message));
}

- (void)onActorDieWithDKActorRef:(DKActorRef *)ref
                  withDKEnvelope:(DKEnvelope *)envelope
           withJavaLangException:(JavaLangException *)e {
  AMLog_wWithNSString_withNSString_(AMActorTrace_TAG_, JreStrcat("$$$@", @"Die(", [((DKActorRef *) nil_chk(ref)) getPath], @") by ", [((DKEnvelope *) nil_chk(envelope)) getMessage]));
  AMLog_eWithNSString_withJavaLangThrowable_(AMActorTrace_TAG_, e);
}

- (instancetype)init {
  AMActorTrace_init(self);
  return self;
}

@end

void AMActorTrace_init(AMActorTrace *self) {
  (void) NSObject_init(self);
}

AMActorTrace *new_AMActorTrace_init() {
  AMActorTrace *self = [AMActorTrace alloc];
  AMActorTrace_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMActorTrace)
