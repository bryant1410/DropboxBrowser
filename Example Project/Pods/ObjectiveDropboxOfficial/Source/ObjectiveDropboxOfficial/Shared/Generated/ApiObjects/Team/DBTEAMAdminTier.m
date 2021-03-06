///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMAdminTier.h"

#pragma mark - API Object

@implementation DBTEAMAdminTier

#pragma mark - Constructors

- (instancetype)initWithTeamAdmin {
  self = [super init];
  if (self) {
    _tag = DBTEAMAdminTierTeamAdmin;
  }
  return self;
}

- (instancetype)initWithUserManagementAdmin {
  self = [super init];
  if (self) {
    _tag = DBTEAMAdminTierUserManagementAdmin;
  }
  return self;
}

- (instancetype)initWithSupportAdmin {
  self = [super init];
  if (self) {
    _tag = DBTEAMAdminTierSupportAdmin;
  }
  return self;
}

- (instancetype)initWithMemberOnly {
  self = [super init];
  if (self) {
    _tag = DBTEAMAdminTierMemberOnly;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isTeamAdmin {
  return _tag == DBTEAMAdminTierTeamAdmin;
}

- (BOOL)isUserManagementAdmin {
  return _tag == DBTEAMAdminTierUserManagementAdmin;
}

- (BOOL)isSupportAdmin {
  return _tag == DBTEAMAdminTierSupportAdmin;
}

- (BOOL)isMemberOnly {
  return _tag == DBTEAMAdminTierMemberOnly;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMAdminTierTeamAdmin:
    return @"DBTEAMAdminTierTeamAdmin";
  case DBTEAMAdminTierUserManagementAdmin:
    return @"DBTEAMAdminTierUserManagementAdmin";
  case DBTEAMAdminTierSupportAdmin:
    return @"DBTEAMAdminTierSupportAdmin";
  case DBTEAMAdminTierMemberOnly:
    return @"DBTEAMAdminTierMemberOnly";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMAdminTierSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMAdminTierSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMAdminTierSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMAdminTierSerializer

+ (NSDictionary *)serialize:(DBTEAMAdminTier *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isTeamAdmin]) {
    jsonDict[@".tag"] = @"team_admin";
  } else if ([valueObj isUserManagementAdmin]) {
    jsonDict[@".tag"] = @"user_management_admin";
  } else if ([valueObj isSupportAdmin]) {
    jsonDict[@".tag"] = @"support_admin";
  } else if ([valueObj isMemberOnly]) {
    jsonDict[@".tag"] = @"member_only";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMAdminTier *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"team_admin"]) {
    return [[DBTEAMAdminTier alloc] initWithTeamAdmin];
  } else if ([tag isEqualToString:@"user_management_admin"]) {
    return [[DBTEAMAdminTier alloc] initWithUserManagementAdmin];
  } else if ([tag isEqualToString:@"support_admin"]) {
    return [[DBTEAMAdminTier alloc] initWithSupportAdmin];
  } else if ([tag isEqualToString:@"member_only"]) {
    return [[DBTEAMAdminTier alloc] initWithMemberOnly];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
