//
//  BannerModel.h
//  Searchs
//
//  Created by taffy on 16/3/3.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "SHBaseModel.h"

@interface BannerModel : SHBaseModel

@property (nonatomic) NSString *image;

+ (instancetype) newWithDictionary: (NSDictionary *)dic;
+ (NSArray *) listWithDictionary: (NSDictionary *)dic;
@end
