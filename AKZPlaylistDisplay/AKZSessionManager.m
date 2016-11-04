//
//  AKZSessionManager.m
//  AKZPlaylistDisplay
//
//  Created by sphatzik on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZSessionManager.h"
#import <Mantle/Mantle.h>

@implementation AKZSessionManager

+ (AKZSessionManager *)sharedManager
{
    static AKZSessionManager *_sharedManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[self alloc] initWithBaseURL:[NSURL URLWithString:BASEURL]];
    });
    
    return _sharedManager;
}

// Retrieve List of the Playlist

-(void)getResults:(void (^)(AKZGetResultsResponse *))success
          failure:(void (^)(NSError *))failure{
    [self GET:@"playlists"
   parameters:nil
     progress:^(NSProgress * _Nonnull downloadProgress) {
         
     } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
         if(success){
             NSError *error = nil;
             AKZGetResultsResponse *messageA = [MTLJSONAdapter modelOfClass:AKZGetResultsResponse.class
                                                         fromJSONDictionary:responseObject
                                                                      error:&error];
             success(messageA);
         }
         
     } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
         if(failure){
             failure(error);
         }
     }];
}

//Retrieve Items that a specific playlist contains

-(void)getItemsForPlaylist:(AKZResults *)playlistDetail
                   success:(void (^)(AKZGetItemsResponse *))success
                   failure:(void (^)(NSError *))failure{
    [self GET:@"playlist"
   parameters:@{@"playlistid" : playlistDetail.playlistId}
     progress:^(NSProgress * _Nonnull downloadProgress) {
         
     } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
         NSError *error = nil;
         AKZGetItemsResponse *messageA = [MTLJSONAdapter modelOfClass:AKZGetItemsResponse.class
                                                   fromJSONDictionary:responseObject
                                                                error:&error];
         success(messageA);
         
     } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
         if(failure){
             failure(error);
         }
     }];
    
}

@end
