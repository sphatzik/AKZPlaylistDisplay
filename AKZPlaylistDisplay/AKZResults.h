//
//  AKZResults.h
//  AKZPlaylistDisplay
//
//  Created by minus one on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface AKZResults : MTLModel <MTLJSONSerializing>

@property(strong, nonatomic)NSString *Name;
@property (strong, nonatomic)NSNumber *ItemCount;
@property(strong, nonatomic)NSString *ObjectType;
@property (strong, nonatomic)NSString *DateUpdated;
@property(strong, nonatomic)NSNumber *Duration;
@property (strong, nonatomic)NSNumber *FanCount;
@property(strong, nonatomic)NSNumber *IsOwner;
@property (strong, nonatomic)NSString *LargePhotoUrl;
@property(strong, nonatomic)NSString *OwnerId;
@property (strong, nonatomic)NSString *OwnerNickName;
@property (strong, nonatomic)NSString *OwnerPhotoUrl;
@property(strong, nonatomic)NSString *PhotoUrl;
@property (strong, nonatomic)NSString *PlaylistId;
@property (strong, nonatomic)NSNumber *ViewerIsFan;

@end
