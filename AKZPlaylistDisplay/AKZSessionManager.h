//
//  AKZSessionManager.h
//  AKZPlaylistDisplay
//
//  Created by minus one on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import "AKZResults.h"
#import "AKZGetResultsResponse.h"
#import "AKZConstants.h"

@interface AKZSessionManager : AFHTTPSessionManager

+ (AKZSessionManager *)sharedManager;


-(void)getResults:(void(^)(AKZGetResultsResponse *response))success
             failure:(void(^)(NSError *error))failure;


@end
