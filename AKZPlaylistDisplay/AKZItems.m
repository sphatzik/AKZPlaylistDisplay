//
//  AKZItems.m
//  AKZPlaylistDisplay
//
//  Created by sphatzik on 23/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZItems.h"

@implementation AKZItems

+(NSDictionary *)JSONKeyPathsByPropertyKey{
    
    return @{
             @"objectType" : @"ObjectType",
             @"artistId" : @"ArtistId",
             @"artistName" : @"ArtistName",
             @"genres" : @"Genres",
             @"isExplicit" : @"IsExplicit",
             @"isOwner" : @"IsOwner",
             @"isPreview" : @"IsPreview",
             @"isStreamable" : @"IsStreamable",
             @"isUserFan" : @"IsUserFan",
             @"moduleId" : @"ModuleId",
             @"trackDuration" : @"TrackDuration",
             @"trackId" : @"TrackId",
             @"trackName" : @"TrackName",
             @"trackNumber" : @"TrackNumber",
             @"userMark" : @"UserMark",
             @"albumId" : @"AlbumId",
             @"albumName" : @"AlbumName",
             @"dateUserAdded" : @"DateUserAdded",
             @"imageUrl" : @"ImageUrl",
             @"largeImageUrl" : @"LargeImageUrl",
             @"itemId" : @"ItemId",
             @"position" : @"Position",
             @"streamingModuleId" : @"StreamingModuleId"
             };
}

@end