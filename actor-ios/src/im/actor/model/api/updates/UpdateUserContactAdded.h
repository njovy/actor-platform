//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateUserContactAdded.java
//

#ifndef _ImActorModelApiUpdatesUpdateUserContactAdded_H_
#define _ImActorModelApiUpdatesUpdateUserContactAdded_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateUserContactAdded_HEADER 87

@interface ImActorModelApiUpdatesUpdateUserContactAdded : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateUserContactAdded *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)uid
                    withInt:(jint)contactId;

- (instancetype)init;

- (jint)getUid;

- (jint)getContactId;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateUserContactAdded)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateUserContactAdded *ImActorModelApiUpdatesUpdateUserContactAdded_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateUserContactAdded, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateUserContactAdded)

#endif // _ImActorModelApiUpdatesUpdateUserContactAdded_H_