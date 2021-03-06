///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMBaseDfbReport;

#pragma mark - API Object

///
/// The `BaseDfbReport` struct.
///
/// Base report structure.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMBaseDfbReport : NSObject <DBSerializable>

#pragma mark - Instance fields

/// First date present in the results as 'YYYY-MM-DD' or None.
@property (nonatomic, readonly, copy) NSString * _Nonnull startDate;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param startDate First date present in the results as 'YYYY-MM-DD' or None.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithStartDate:(NSString * _Nonnull)startDate;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `BaseDfbReport` struct.
///
@interface DBTEAMBaseDfbReportSerializer : NSObject

///
/// Serializes `DBTEAMBaseDfbReport` instances.
///
/// @param instance An instance of the `DBTEAMBaseDfbReport` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMBaseDfbReport` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMBaseDfbReport * _Nonnull)instance;

///
/// Deserializes `DBTEAMBaseDfbReport` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMBaseDfbReport` API object.
///
/// @return An instantiation of the `DBTEAMBaseDfbReport` object.
///
+ (DBTEAMBaseDfbReport * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
