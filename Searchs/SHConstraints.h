//
//  constans.h
//  Searchs
//
//  Created by taffy on 16/2/28.
//  Copyright © 2016年 taffy. All rights reserved.
//

#define WIDTH_SCREEN_RAW ([UIScreen mainScreen].bounds.size.width)
#define HEIGHT_SCREEN_RAW ([UIScreen mainScreen].bounds.size.height)
#define WIDTH_SCREEN (MIN(WIDTH_SCREEN_RAW, HEIGHT_SCREEN_RAW))
#define HEIGHT_SCREEN (MAX(WIDTH_SCREEN_RAW, HEIGHT_SCREEN_RAW))

#define STR_EQ(a, b) [a isEqualToString:b]
#define STR_IS_EMPTY(a) (a == nil || STR_EQ(a, @""))
#define FORMAT(args...) [NSString stringWithFormat:args]
