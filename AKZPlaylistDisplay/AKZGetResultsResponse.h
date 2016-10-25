//
//  AKZGetResutsResponse.h
//  AKZPlaylistDisplay
//
//  Created by sphatzik on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "AKZResults.h"

@interface AKZGetResultsResponse : MTLModel <MTLJSONSerializing>

@property NSArray *result;

@end
