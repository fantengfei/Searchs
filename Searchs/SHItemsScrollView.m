//
//  SHItemsScrollView.m
//  Searchs
//
//  Created by taffy on 16/3/4.
//  Copyright © 2016年 taffy. All rights reserved.
//

#define kItemSize ceilf(WIDTH_SCREEN / 5)
#define kIconSize ceilf(kItemSize / 2.5)
#define kCollectionViewWith kItemSize * 5 + 2

#import "SHItemsScrollView.h"

@interface ItemCell()

@property (nonatomic) UIImageView *icon;
@property (nonatomic) UILabel *title;

@end

@implementation ItemCell

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = WHITE;
    CGFloat width = frame.size.width;
    self.icon = [[UIImageView alloc] initWithFrame:CGRectMake((kItemSize - kIconSize) / 2, (kItemSize - kIconSize) / 2 - 10, kIconSize, kIconSize)];
    [self.icon setContentMode:UIViewContentModeScaleAspectFill];
    [self.contentView addSubview:self.icon];
  
    self.title = [[UILabel alloc] initWithFrame:CGRectMake(0, self.icon.bottom + 10, width, 17)];
    [self.title setFont:FONT_12];
    [self.title setTextAlignment:NSTextAlignmentCenter];
    [self.contentView addSubview:self.title];
  }
  
  return self;
}

- (void) bindWithData:(CategoryModel *)model {
  [self.icon sd_setImageWithURL:[NSURL URLWithString:FORMAT(@"%@/%@", HOST, model.icon)]];
  [self.title setText:model.name];
}

@end








@interface SHItemsScrollView()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong)NSArray<CategoryModel *> *items;
@property (nonatomic, strong)TapItemBlock tapitemBlock;

@end


static NSString *kReusableView = @"kReusableView";

@implementation SHItemsScrollView

+ (instancetype) newWithPoint:(CGPoint)point
                        items:(NSArray<CategoryModel *> *)items
              tapItemCallback:(TapItemBlock)tapItemCallback {
  SHItemsScrollView *view = [SHItemsScrollView new];
  view.items = items;
  view.tapitemBlock = [tapItemCallback copy];
  
  UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
  UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(point.x, point.y, kCollectionViewWith, kItemSize * 2 + 1.5) collectionViewLayout:layout];
  [view addSubview:collectionView];
  collectionView.backgroundColor = HEX(ececec);
  collectionView.showsHorizontalScrollIndicator = NO;
  collectionView.showsVerticalScrollIndicator = NO;
  collectionView.scrollEnabled = YES;
  collectionView.alwaysBounceHorizontal = YES;
  collectionView.alwaysBounceVertical = YES;
  [collectionView registerClass:[ItemCell class] forCellWithReuseIdentifier:kReusableView];
  collectionView.delegate = view;
  collectionView.dataSource = view;
  
  return view;
}

#pragma mark collectionView代理方法
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  
  ItemCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kReusableView
                                                                         forIndexPath:indexPath];
  [cell bindWithData:self.items[indexPath.item]];
  return cell;
}

//设置每个item的UIEdgeInsets
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout
        insetForSectionAtIndex:(NSInteger)section {
  return UIEdgeInsetsMake(0.5, 0, 0.5, 0);
}

- (CGSize) collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
  return CGSizeMake(kItemSize, kItemSize);
}

//设置每个item水平间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
  return 0;
}

//设置每个item垂直间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
  return 0.5;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  self.tapitemBlock(self.items[indexPath.row]);
}


@end
