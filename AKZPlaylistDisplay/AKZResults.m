//
//  AKZResults.m
//  AKZPlaylistDisplay
//
//  Created by minus one on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZResults.h"

@implementation AKZResults

+(NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"ObjectType" : @"ObjectType",
             @"DateUpdated" : @"DateUpdated",
             @"Duration" : @"Duration",
             @"FanCount" : @"FanCount",
             @"IsOwner" : @"IsOwner",
             @"ItemCount" : @"ItemCount",
             @"LargePhotoUrl" : @"LargePhotoUrl",
             @"Name" : @"Name",
             @"OwnerId" : @"OwnerId",
             @"OwnerNickName" : @"OwnerNickName",
             @"OwnerPhotoUrl" : @"OwnerPhotoUrl",
             @"PhotoUrl" : @"PhotoUrl",
             @"PlaylistId" : @"PlaylistId",
             @"ViewerIsFan" : @"ViewerIsFan"
             };
}

@end
