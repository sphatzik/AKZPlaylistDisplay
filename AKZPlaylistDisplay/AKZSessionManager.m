//
//  AKZSessionManager.m
//  AKZPlaylistDisplay
//
//  Created by minus one on 20/10/16.
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

-(void)getResults:(void (^)(AKZGetResultsResponse *))success failure:(void (^)(NSError *))failure{
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

@end
