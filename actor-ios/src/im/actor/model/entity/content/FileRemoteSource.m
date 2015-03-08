//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/content/FileRemoteSource.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/FileLocation.h"
#include "im/actor/model/entity/content/FileRemoteSource.h"
#include "java/io/IOException.h"

@interface AMFileRemoteSource () {
 @public
  AMFileLocation *fileLocation_;
}
- (instancetype)init;
@end

J2OBJC_FIELD_SETTER(AMFileRemoteSource, fileLocation_, AMFileLocation *)

@implementation AMFileRemoteSource

+ (AMFileRemoteSource *)fromValuesWithBSBserValues:(BSBserValues *)reader {
  return AMFileRemoteSource_fromValuesWithBSBserValues_(reader);
}

- (instancetype)initWithAMFileLocation:(AMFileLocation *)fileLocation {
  if (self = [super init]) {
    self->fileLocation_ = fileLocation;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (AMFileLocation *)getFileLocation {
  return fileLocation_;
}

- (jint)getSize {
  return [((AMFileLocation *) nil_chk(fileLocation_)) getFileSize];
}

- (NSString *)getFileName {
  return [((AMFileLocation *) nil_chk(fileLocation_)) getFileName];
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  [super parseWithBSBserValues:values];
  fileLocation_ = AMFileLocation_fromBytesWithByteArray_([((BSBserValues *) nil_chk(values)) getBytesWithInt:2]);
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [super serializeWithBSBserWriter:writer];
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:2 withBSBserObject:fileLocation_];
}

- (void)copyAllFieldsTo:(AMFileRemoteSource *)other {
  [super copyAllFieldsTo:other];
  other->fileLocation_ = fileLocation_;
}

@end

AMFileRemoteSource *AMFileRemoteSource_fromValuesWithBSBserValues_(BSBserValues *reader) {
  AMFileRemoteSource_init();
  AMFileRemoteSource *fileLocalSource = [[AMFileRemoteSource alloc] init];
  [fileLocalSource parseWithBSBserValues:reader];
  return fileLocalSource;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMFileRemoteSource)