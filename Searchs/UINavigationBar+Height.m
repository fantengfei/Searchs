//
//  UINavigationBar+Height.m
//  Searchs
//
//  Created by taffy on 16/3/3.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "UINavigationBar+Height.h"

static CGFloat kNavigationBarHeight = 64;

@implementation UINavigationBar (Height)

- (CGSize) sizeThatFits:(CGSize)size {
  return CGSizeMake(WIDTH_SCREEN, kNavigationBarHeight);
}

@end
