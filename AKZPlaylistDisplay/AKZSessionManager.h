//
//  AKZSessionManager.h
//  AKZPlaylistDisplay
//
//  Created by sphatzik on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import "AKZResults.h"
#import "AKZGetResultsResponse.h"
#import "AKZGetItemsResponse.h"
#import "AKZItems.h"
#import "AKZConstants.h"

@interface AKZSessionManager : AFHTTPSessionManager

+ (AKZSessionManager *)sharedManager;


-(void)getResults:(void(^)(AKZGetResultsResponse *response))success
             failure:(void(^)(NSError *error))failure;

-(void)getItemsForPlaylist:(AKZResults *)playlistDetail
                   success:(void(^)(AKZGetItemsResponse *response))success
                   failure:(void(^)(NSError *error))failure;


@end
