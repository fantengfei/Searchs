//
//  CategoryModel.m
//  Searchs
//
//  Created by taffy on 16/3/3.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "CategoryModel.h"

@implementation CategoryModel

+ (instancetype) newWithDictionary: (NSDictionary *)dic {
  CategoryModel *model = [CategoryModel new];
  model.name = [dic objectForKey:@"item_name"];
  model.icon = [dic objectForKey:@"item_icon"];
  return model;
}

+ (NSArray *)listWithDictionary:(NSDictionary *)dic {
  NSArray *array = [dic objectForKey:@"items"];
  
  NSMutableArray *list = [NSMutableArray array];
  for (NSDictionary *dic in array) {
    [list addObject:[CategoryModel newWithDictionary:dic]];
  }
  
  return list;
}
@end
