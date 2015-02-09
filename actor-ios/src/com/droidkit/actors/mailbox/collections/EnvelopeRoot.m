//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/mailbox/collections/EnvelopeRoot.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/droidkit/actors/ActorTime.h"
#include "com/droidkit/actors/mailbox/Envelope.h"
#include "com/droidkit/actors/mailbox/MailboxesQueue.h"
#include "com/droidkit/actors/mailbox/collections/EnvelopeCollection.h"
#include "com/droidkit/actors/mailbox/collections/EnvelopeRoot.h"
#include "com/droidkit/actors/mailbox/collections/ScheduledEnvelope.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/ThreadLocal.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/TreeMap.h"

@interface ComDroidkitActorsMailboxCollectionsEnvelopeRoot () {
 @public
  JavaUtilHashSet *usedSlot_;
  JavaUtilHashMap *collections_;
  JavaUtilHashMap *lastTopKey_;
  JavaUtilTreeMap *sortedCollection_;
  ComDroidkitActorsMailboxMailboxesQueue *queue_;
}
@end

J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsEnvelopeRoot, usedSlot_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsEnvelopeRoot, collections_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsEnvelopeRoot, lastTopKey_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsEnvelopeRoot, sortedCollection_, JavaUtilTreeMap *)
J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsEnvelopeRoot, queue_, ComDroidkitActorsMailboxMailboxesQueue *)

@interface ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult () {
 @public
  ComDroidkitActorsMailboxEnvelope *envelope__;
  jlong delay__;
}
- (instancetype)initWithComDroidkitActorsMailboxEnvelope:(ComDroidkitActorsMailboxEnvelope *)envelope;
- (instancetype)initWithLong:(jlong)delay;
@end

J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult, envelope__, ComDroidkitActorsMailboxEnvelope *)

@implementation ComDroidkitActorsMailboxCollectionsEnvelopeRoot

- (instancetype)initWithComDroidkitActorsMailboxMailboxesQueue:(ComDroidkitActorsMailboxMailboxesQueue *)queue {
  if (self = [super init]) {
    ComDroidkitActorsMailboxCollectionsEnvelopeRoot_setAndConsume_usedSlot_(self, [[JavaUtilHashSet alloc] init]);
    ComDroidkitActorsMailboxCollectionsEnvelopeRoot_setAndConsume_collections_(self, [[JavaUtilHashMap alloc] init]);
    ComDroidkitActorsMailboxCollectionsEnvelopeRoot_setAndConsume_lastTopKey_(self, [[JavaUtilHashMap alloc] init]);
    ComDroidkitActorsMailboxCollectionsEnvelopeRoot_setAndConsume_sortedCollection_(self, [[JavaUtilTreeMap alloc] init]);
    ComDroidkitActorsMailboxCollectionsEnvelopeRoot_set_queue_(self, queue);
  }
  return self;
}

- (void)attachCollectionWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:(ComDroidkitActorsMailboxCollectionsEnvelopeCollection *)collection {
  @synchronized(self) {
    jlong key = [((ComDroidkitActorsMailboxCollectionsEnvelopeCollection *) nil_chk(collection)) getTopKey];
    if (![((JavaUtilHashMap *) nil_chk(collections_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_([collection getId])]) {
      [collections_ putWithId:JavaLangInteger_valueOfWithInt_([collection getId]) withId:collection];
      [((JavaUtilHashMap *) nil_chk(lastTopKey_)) putWithId:JavaLangInteger_valueOfWithInt_([collection getId]) withId:JavaLangLong_valueOfWithLong_(key)];
      if (key > 0) {
        [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) putWithId:JavaLangLong_valueOfWithLong_(key) withId:collection];
      }
    }
    [((ComDroidkitActorsMailboxMailboxesQueue *) nil_chk(queue_)) notifyQueueChanged];
  }
}

- (void)detachCollectionWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:(ComDroidkitActorsMailboxCollectionsEnvelopeCollection *)collection {
  @synchronized(self) {
    if (![((JavaUtilHashMap *) nil_chk(collections_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_([((ComDroidkitActorsMailboxCollectionsEnvelopeCollection *) nil_chk(collection)) getId])]) {
      return;
    }
    [collections_ removeWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    JavaLangLong *prevKey = [((JavaUtilHashMap *) nil_chk(lastTopKey_)) getWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    [lastTopKey_ removeWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    if ([((JavaLangLong *) nil_chk(prevKey)) longLongValue] > 0) {
      [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) removeWithId:prevKey];
    }
  }
}

- (ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *)fetchCollectionWithLong:(jlong)time {
  @synchronized(self) {
    id<JavaUtilMap_Entry> res = [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) isEmpty] ? nil : [sortedCollection_ firstEntry];
    if (res != nil) {
      ComDroidkitActorsMailboxCollectionsEnvelopeCollection *collection = [res getValue];
      ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *envelope = [((ComDroidkitActorsMailboxCollectionsEnvelopeCollection *) nil_chk(collection)) fetchEnvelopeWithLong:time];
      if (envelope != nil) {
        if ([envelope getEnvelope] != nil) {
          [self detachCollectionWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:collection];
          ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *result = ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_envelopeWithComDroidkitActorsMailboxEnvelope_([((ComDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk([envelope getEnvelope])) getEnvelope]);
          [envelope recycle];
          return result;
        }
        else {
          ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *result = ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_delayWithLong_([envelope getDelay]);
          [envelope recycle];
          return result;
        }
      }
      else {
        return nil;
      }
    }
    else {
      return nil;
    }
  }
}

- (void)changedTopKeyWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:(ComDroidkitActorsMailboxCollectionsEnvelopeCollection *)collection {
  @synchronized(self) {
    if (![((JavaUtilHashMap *) nil_chk(collections_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_([((ComDroidkitActorsMailboxCollectionsEnvelopeCollection *) nil_chk(collection)) getId])]) {
      return;
    }
    jlong key = [collection getTopKey];
    JavaLangLong *prevKey = [((JavaUtilHashMap *) nil_chk(lastTopKey_)) getWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    [lastTopKey_ removeWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    if ([((JavaLangLong *) nil_chk(prevKey)) longLongValue] > 0) {
      [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) removeWithId:prevKey];
    }
    [lastTopKey_ putWithId:JavaLangInteger_valueOfWithInt_([collection getId]) withId:JavaLangLong_valueOfWithLong_(key)];
    if (key > 0) {
      [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) putWithId:JavaLangLong_valueOfWithLong_(key) withId:collection];
    }
    [((ComDroidkitActorsMailboxMailboxesQueue *) nil_chk(queue_)) notifyQueueChanged];
  }
}

- (jlong)buildKeyWithLong:(jlong)time {
  @synchronized(self) {
    jlong currentTime = DAActorTime_currentTime();
    if (time < currentTime) {
      time = currentTime;
    }
    id<JavaUtilIterator> iterator = [((JavaUtilHashSet *) nil_chk(usedSlot_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
      jlong t = [((JavaLangLong *) nil_chk([iterator next])) longLongValue];
      if (t < currentTime * ComDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE) {
        [iterator remove];
      }
    }
    jlong shift = 0;
    while ([usedSlot_ containsWithId:JavaLangLong_valueOfWithLong_(time * ComDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE + shift)]) {
      shift++;
    }
    [usedSlot_ addWithId:JavaLangLong_valueOfWithLong_(time * ComDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE + shift)];
    return time * ComDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE + shift;
  }
}

- (void)dealloc {
  RELEASE_(usedSlot_);
  RELEASE_(collections_);
  RELEASE_(lastTopKey_);
  RELEASE_(sortedCollection_);
  RELEASE_(queue_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComDroidkitActorsMailboxCollectionsEnvelopeRoot *)other {
  [super copyAllFieldsTo:other];
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_set_usedSlot_(other, usedSlot_);
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_set_collections_(other, collections_);
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_set_lastTopKey_(other, lastTopKey_);
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_set_sortedCollection_(other, sortedCollection_);
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_set_queue_(other, queue_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComDroidkitActorsMailboxMailboxesQueue:", "EnvelopeRoot", NULL, 0x1, NULL },
    { "attachCollectionWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:", "attachCollection", "V", 0x21, NULL },
    { "detachCollectionWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:", "detachCollection", "V", 0x21, NULL },
    { "fetchCollectionWithLong:", "fetchCollection", "Lcom.droidkit.actors.mailbox.collections.EnvelopeRoot$FetchResult;", 0x21, NULL },
    { "changedTopKeyWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:", "changedTopKey", "V", 0x20, NULL },
    { "buildKeyWithLong:", "buildKey", "J", 0x20, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MULTIPLE_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE },
    { "usedSlot_", NULL, 0x12, "Ljava.util.HashSet;", NULL,  },
    { "collections_", NULL, 0x12, "Ljava.util.HashMap;", NULL,  },
    { "lastTopKey_", NULL, 0x12, "Ljava.util.HashMap;", NULL,  },
    { "sortedCollection_", NULL, 0x12, "Ljava.util.TreeMap;", NULL,  },
    { "queue_", NULL, 0x2, "Lcom.droidkit.actors.mailbox.MailboxesQueue;", NULL,  },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsMailboxCollectionsEnvelopeRoot = { 1, "EnvelopeRoot", "com.droidkit.actors.mailbox.collections", NULL, 0x1, 6, methods, 6, fields, 0, NULL};
  return &_ComDroidkitActorsMailboxCollectionsEnvelopeRoot;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsMailboxCollectionsEnvelopeRoot)

BOOL ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initialized = NO;

@implementation ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult

JavaLangThreadLocal * ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_;

+ (ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *)envelopeWithComDroidkitActorsMailboxEnvelope:(ComDroidkitActorsMailboxEnvelope *)envelope {
  return ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_envelopeWithComDroidkitActorsMailboxEnvelope_(envelope);
}

+ (ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *)delayWithLong:(jlong)delay {
  return ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_delayWithLong_(delay);
}

- (instancetype)initWithComDroidkitActorsMailboxEnvelope:(ComDroidkitActorsMailboxEnvelope *)envelope {
  if (self = [super init]) {
    ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_set_envelope__(self, envelope);
  }
  return self;
}

- (instancetype)initWithLong:(jlong)delay {
  if (self = [super init]) {
    self->delay__ = delay;
  }
  return self;
}

- (ComDroidkitActorsMailboxEnvelope *)getEnvelope {
  return envelope__;
}

- (jlong)getDelay {
  return delay__;
}

- (void)updateWithComDroidkitActorsMailboxEnvelope:(ComDroidkitActorsMailboxEnvelope *)envelope
                                          withLong:(jlong)delay {
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_set_envelope__(self, envelope);
  self->delay__ = delay;
}

- (void)recycle {
  [((JavaLangThreadLocal *) nil_chk(ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_)) setWithId:self];
}

- (void)dealloc {
  RELEASE_(envelope__);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *)other {
  [super copyAllFieldsTo:other];
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_set_envelope__(other, envelope__);
  other->delay__ = delay__;
}

+ (void)initialize {
  if (self == [ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult class]) {
    JreStrongAssignAndConsume(&ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_, nil, [[JavaLangThreadLocal alloc] init]);
    J2OBJC_SET_INITIALIZED(ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "envelopeWithComDroidkitActorsMailboxEnvelope:", "envelope", "Lcom.droidkit.actors.mailbox.collections.EnvelopeRoot$FetchResult;", 0x9, NULL },
    { "delayWithLong:", "delay", "Lcom.droidkit.actors.mailbox.collections.EnvelopeRoot$FetchResult;", 0x9, NULL },
    { "initWithComDroidkitActorsMailboxEnvelope:", "FetchResult", NULL, 0x2, NULL },
    { "initWithLong:", "FetchResult", NULL, 0x2, NULL },
    { "getEnvelope", NULL, "Lcom.droidkit.actors.mailbox.Envelope;", 0x1, NULL },
    { "getDelay", NULL, "J", 0x1, NULL },
    { "updateWithComDroidkitActorsMailboxEnvelope:withLong:", "update", "V", 0x1, NULL },
    { "recycle", NULL, "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "RESULT_CACHE_", NULL, 0xa, "Ljava.lang.ThreadLocal;", &ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_,  },
    { "envelope__", "envelope", 0x2, "Lcom.droidkit.actors.mailbox.Envelope;", NULL,  },
    { "delay__", "delay", 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult = { 1, "FetchResult", "com.droidkit.actors.mailbox.collections", "EnvelopeRoot", 0x9, 8, methods, 3, fields, 0, NULL};
  return &_ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult;
}

@end

ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_envelopeWithComDroidkitActorsMailboxEnvelope_(ComDroidkitActorsMailboxEnvelope *envelope) {
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_init();
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *res = [((JavaLangThreadLocal *) nil_chk(ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_)) get];
  if (res != nil) {
    [ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_ remove];
    [res updateWithComDroidkitActorsMailboxEnvelope:envelope withLong:0];
  }
  else {
    res = [[[ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult alloc] initWithComDroidkitActorsMailboxEnvelope:envelope] autorelease];
  }
  return res;
}

ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_delayWithLong_(jlong delay) {
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_init();
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *res = [((JavaLangThreadLocal *) nil_chk(ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_)) get];
  if (res != nil) {
    [ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_ remove];
    [res updateWithComDroidkitActorsMailboxEnvelope:nil withLong:delay];
  }
  else {
    res = [[[ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult alloc] initWithLong:delay] autorelease];
  }
  return res;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult)