//
//  BannerModel.m
//  Searchs
//
//  Created by taffy on 16/3/3.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "BannerModel.h"

@implementation BannerModel

+ (instancetype) newWithDictionary: (NSDictionary *)dic {
  BannerModel *model = [BannerModel new];
  model.image = [dic objectForKey:@"banner"];
  return model;
}

+ (NSArray *) listWithDictionary:(NSDictionary *)dic {
  NSArray *array = [dic objectForKey:@"banners"];
  
  NSMutableArray *list = [NSMutableArray array];
  for (NSDictionary *dic in array) {
    [list addObject:[BannerModel newWithDictionary:dic]];
  }
  return list;
}

@end
