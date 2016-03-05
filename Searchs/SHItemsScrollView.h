//
//  SHItemsScrollView.h
//  Searchs
//
//  Created by taffy on 16/3/4.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryModel.h"


typedef void (^TapItemBlock)(CategoryModel *);

@interface SHItemsScrollView : UIView

+ (instancetype) newWithPoint: (CGPoint)point
                        items: (NSArray<CategoryModel *> *)items
              tapItemCallback: (TapItemBlock) tapItemCallback;

@end










@interface ItemCell : UICollectionViewCell


- (void) bindWithData: (CategoryModel *)model;
@end
