//
//  AKZGetItemsResponse.m
//  AKZPlaylistDisplay
//
//  Created by sphatzik on 23/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZGetItemsResponse.h"

@implementation AKZGetItemsResponse


+(NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"items" : @"Result.Items"
             };
}

+(NSValueTransformer *)itemsJSONTransformer{
    return [MTLJSONAdapter arrayTransformerWithModelClass:AKZItems.class];
}

@end
