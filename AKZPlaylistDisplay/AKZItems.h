//
//  AKZItems.h
//  AKZPlaylistDisplay
//
//  Created by minus one on 23/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface AKZItems : MTLModel <MTLJSONSerializing>

@property(strong, nonatomic)NSString *objectType;
@property(strong, nonatomic)NSNumber *artistId;
@property(strong, nonatomic)NSString *artistName;
@property(strong, nonatomic)NSString *genres;
@property(strong, nonatomic)NSNumber *isExplicit;
@property(strong, nonatomic)NSNumber *isOwner;
@property(strong, nonatomic)NSNumber *isPreview;
@property(strong, nonatomic)NSNumber *isStreamable;
@property(strong, nonatomic)NSNumber *isUserFan;
@property(strong, nonatomic)NSString *moduleId;
@property(strong, nonatomic)NSNumber *trackDuration;
@property(strong, nonatomic)NSNumber *trackId;
@property(strong, nonatomic)NSString *trackName;
@property(strong, nonatomic)NSNumber *trackNumber;
@property(strong, nonatomic)NSNumber *userMark;
@property(strong, nonatomic)NSNumber *albumId;
@property(strong, nonatomic)NSString *albumName;
@property(strong, nonatomic)NSString *dateUserAdded;
@property(strong, nonatomic)NSString *imageUrl;
@property(strong, nonatomic)NSString *largeImageUrl;
@property(strong, nonatomic)NSNumber *itemId;
@property(strong, nonatomic)NSNumber *position;
@property(strong, nonatomic)NSString *streamingModuleId;

@end
