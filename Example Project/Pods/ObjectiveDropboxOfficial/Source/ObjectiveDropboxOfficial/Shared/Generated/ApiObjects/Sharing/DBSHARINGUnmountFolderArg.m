///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGUnmountFolderArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGUnmountFolderArg

#pragma mark - Constructors

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId {
  [DBStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"](sharedFolderId);

  self = [super init];
  if (self) {
    _sharedFolderId = sharedFolderId;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGUnmountFolderArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGUnmountFolderArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGUnmountFolderArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGUnmountFolderArgSerializer

+ (NSDictionary *)serialize:(DBSHARINGUnmountFolderArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"shared_folder_id"] = valueObj.sharedFolderId;

  return jsonDict;
}

+ (DBSHARINGUnmountFolderArg *)deserialize:(NSDictionary *)valueDict {
  NSString *sharedFolderId = valueDict[@"shared_folder_id"];

  return [[DBSHARINGUnmountFolderArg alloc] initWithSharedFolderId:sharedFolderId];
}

@end
