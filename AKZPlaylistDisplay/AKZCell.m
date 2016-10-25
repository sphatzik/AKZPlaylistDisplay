//
//  AKZCell.m
//  AKZPlaylistDisplay
//
//  Created by sphatzik on 25/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZCell.h"
#import <NSString+FontAwesome.h>


@implementation AKZCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.backgroundView = [[UIImageView alloc] initWithImage:[[self class] defaultBackgroundImage]];
    self.selectedBackgroundView = [[UIImageView alloc] initWithImage:[[self class] highlightedBackgroundImage]];
    self.accessoryView = [self defaultAccessoryView];
}

- (void) prepareForReuse
{
    [super prepareForReuse];
    
    self.accessoryView = [self defaultAccessoryView];
}

- (void) layoutSubviews
{
    [super layoutSubviews];
    
    // If there is no accessory view, manually layout the content view and leave some space to the right.
    // This is required because we have set all the trailing layout constraints to zero
    if (!self.accessoryView) {
        self.contentView.frame = UIEdgeInsetsInsetRect(self.bounds, UIEdgeInsetsMake(0, 0, 0, 10));
    }
}

- (void) setAccessoryView:(UIView *)accessoryView
{
    [super setAccessoryView:accessoryView];
    
    [self setNeedsLayout];
}

- (UIView *) defaultAccessoryView
{
    UIImageView *v = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_blue"]];
    v.contentMode = UIViewContentModeCenter;
    v.frame = CGRectMake(0, 0, 18, 33);
    
    return v;
}

+ (UIImage *)defaultBackgroundImage
{
    static UIImage *img = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        img = [self borderedImage:[UIColor whiteColor] innerColor:[UIColor lightGrayColor]];
    });
    
    return img;
}

+ (UIImage *)highlightedBackgroundImage
{
    static UIImage *img = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        img = [self borderedImage:[UIColor whiteColor] innerColor:[UIColor lightGrayColor]];
    });
    
    return img;
}


+ (UIImage *)borderedImage:(UIColor *)outerColor innerColor:(UIColor *)innerColor
{
    UIImage *theImage = nil;
    
    CGSize size = CGSizeMake(70, 70);
    UIEdgeInsets capInsets = UIEdgeInsetsMake(30, 30, 30, 30);
    UIEdgeInsets insets = UIEdgeInsetsMake(5, 10, 5, 10);
    CGRect outterRect = CGRectMake(0, 0, size.width, size.height);
    CGRect innerRect = UIEdgeInsetsInsetRect(outterRect, insets);
    CGFloat outerCornerRadius = 0.0;
    CGFloat innerCornerRadius = 0.0;
    
    UIGraphicsBeginImageContextWithOptions(outterRect.size, NO, 0.0);
    UIGraphicsGetCurrentContext();
    
    [outerColor setFill];
    [[UIBezierPath bezierPathWithRoundedRect:outterRect cornerRadius:outerCornerRadius] fill];
    
    [innerColor setFill];
    [[UIBezierPath bezierPathWithRoundedRect:innerRect cornerRadius:innerCornerRadius] fill];
    
    theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    theImage = [theImage resizableImageWithCapInsets:capInsets];
    
    return theImage;
}

@end
