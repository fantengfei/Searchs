//
//  CategoryModel.h
//  Searchs
//
//  Created by taffy on 16/3/3.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "SHBaseModel.h"

@interface CategoryModel : SHBaseModel

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *icon;

+ (instancetype) newWithDictionary: (NSDictionary *)dic;
+ (NSArray *) listWithDictionary: (NSDictionary *)dic;

@end
