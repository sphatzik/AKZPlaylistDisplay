//
//  AKZResults.m
//  AKZPlaylistDisplay
//
//  Created by sphatzik on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZResults.h"

@implementation AKZResults

+(NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"objectType" : @"ObjectType",
             @"dateUpdated" : @"DateUpdated",
             @"duration" : @"Duration",
             @"fanCount" : @"FanCount",
             @"isOwner" : @"IsOwner",
             @"itemCount" : @"ItemCount",
             @"largePhotoUrl" : @"LargePhotoUrl",
             @"name" : @"Name",
             @"ownerId" : @"OwnerId",
             @"ownerNickName" : @"OwnerNickName",
             @"ownerPhotoUrl" : @"OwnerPhotoUrl",
             @"photoUrl" : @"PhotoUrl",
             @"playlistId" : @"PlaylistId",
             @"viewerIsFan" : @"ViewerIsFan"
             };
}

@end
