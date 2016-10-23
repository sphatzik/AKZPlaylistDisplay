//
//  AKZResults.h
//  AKZPlaylistDisplay
//
//  Created by minus one on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface AKZResults : MTLModel <MTLJSONSerializing>

@property(strong, nonatomic)NSString *name;
@property (strong, nonatomic)NSNumber *itemCount;
@property(strong, nonatomic)NSString *objectType;
@property (strong, nonatomic)NSString *dateUpdated;
@property(strong, nonatomic)NSNumber *duration;
@property (strong, nonatomic)NSNumber *fanCount;
@property(strong, nonatomic)NSNumber *isOwner;
@property (strong, nonatomic)NSString *largePhotoUrl;
@property(strong, nonatomic)NSString *ownerId;
@property (strong, nonatomic)NSString *ownerNickName;
@property (strong, nonatomic)NSString *ownerPhotoUrl;
@property(strong, nonatomic)NSString *photoUrl;
@property (strong, nonatomic)NSString *playlistId;
@property (strong, nonatomic)NSNumber *viewerIsFan;

@end
