//
//  AKZGetItemsResponse.m
//  AKZPlaylistDisplay
//
//  Created by minus one on 23/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZGetItemsResponse.h"

@implementation AKZGetItemsResponse


+(NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"result" : @"Result",
             @"items" : @"Items"
             };
}

+(NSValueTransformer *)itemsJSONTransformer{
    return [MTLJSONAdapter arrayTransformerWithModelClass:AKZItems.class];
}

@end
