//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/parser/UpdatesParser.java
//

#ifndef _ImActorModelApiParserUpdatesParser_H_
#define _ImActorModelApiParserUpdatesParser_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/BaseParser.h"

@class APUpdate;
@class IOSByteArray;

@interface ImActorModelApiParserUpdatesParser : APBaseParser

#pragma mark Public

- (instancetype)init;

- (APUpdate *)readWithInt:(jint)type
            withByteArray:(IOSByteArray *)payload;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiParserUpdatesParser)

FOUNDATION_EXPORT void ImActorModelApiParserUpdatesParser_init(ImActorModelApiParserUpdatesParser *self);

FOUNDATION_EXPORT ImActorModelApiParserUpdatesParser *new_ImActorModelApiParserUpdatesParser_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiParserUpdatesParser)

#endif // _ImActorModelApiParserUpdatesParser_H_
