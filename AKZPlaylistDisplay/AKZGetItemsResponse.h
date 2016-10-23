//
//  AKZGetItemsResponse.h
//  AKZPlaylistDisplay
//
//  Created by minus one on 23/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "AKZItems.h"

@interface AKZGetItemsResponse : MTLModel <MTLJSONSerializing>

@property NSArray *result;
@property NSArray *items;

@end
