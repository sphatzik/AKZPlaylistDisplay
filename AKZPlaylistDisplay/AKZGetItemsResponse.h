//
//  AKZGetItemsResponse.h
//  AKZPlaylistDisplay
//
//  Created by sphatzik on 23/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "AKZItems.h"

@interface AKZGetItemsResponse : MTLModel <MTLJSONSerializing>

@property NSArray *items;

@end
