//
//  SHTheme.h
//  Searchs
//
//  Created by taffy on 16/2/28.
//  Copyright © 2016年 taffy. All rights reserved.
//

// color

#define HEX(d) [UIColor colorWithRed:((0x ## d >> 16) & 0xFF) / 255.0f green:((0x ## d >> 8) & 0xFF) / 255.0 blue:(0x ## d & 0xFF) / 255.0f alpha:1.0f]
#define HEX_INT(d) [UIColor colorWithRed:((d >> 16) & 0xFF) / 255.0f green:((d >> 8) & 0xFF) / 255.0 blue:(d & 0xFF) / 255.0f alpha:1.0f]
#define COLOR_FROM_HEX_ALPHA(d, a) [UIColor colorWithRed:((d >> 16) & 0xFF) / 255.0f green:((d >> 8) & 0xFF) / 255.0 blue:(d & 0xFF) / 255.0f alpha:a]

#define TRANSPARENT [UIColor clearColor]
#define RED [UIColor redColor]
#define WHITE [UIColor whiteColor]
#define BLACK [UIColor blackColor]
#define WHITE [UIColor whiteColor]
#define BLACK [UIColor blackColor]


// font

#define FONT_11 [UIFont systemFontOfSize:11]
#define FONT_12 [UIFont systemFontOfSize:12]
#define FONT_13 [UIFont systemFontOfSize:13]
#define FONT_14 [UIFont systemFontOfSize:14]
#define FONT_15 [UIFont systemFontOfSize:15]
#define FONT_16 [UIFont systemFontOfSize:16]
#define FONT_17 [UIFont systemFontOfSize:17]
#define BFONT_11 [UIFont boldSystemFontOfSize:11]
#define BFONT_12 [UIFont boldSystemFontOfSize:12]
#define BFONT_13 [UIFont boldSystemFontOfSize:13]
#define BFONT_14 [UIFont boldSystemFontOfSize:14]
#define BFONT_15 [UIFont boldSystemFontOfSize:15]
#define BFONT_16 [UIFont boldSystemFontOfSize:16]
#define BFONT_17 [UIFont boldSystemFontOfSize:17]


