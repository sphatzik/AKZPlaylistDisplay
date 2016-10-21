//
//  AKZGetResutsResponse.m
//  AKZPlaylistDisplay
//
//  Created by minus one on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZGetResultsResponse.h"

@implementation AKZGetResultsResponse

+(NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"Result" : @"Result"
             };
}

+(NSValueTransformer *)resultsJSONTransformer{
    return [MTLJSONAdapter arrayTransformerWithModelClass:AKZResults.class];
}

@end
