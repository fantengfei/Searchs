//
//  SHHomeViewController.m
//  Searchs
//
//  Created by taffy on 16/2/22.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "SHHomeViewController.h"
#import <ComponentKit/ComponentKit.h>
#import "SHRequest.h"
#import "SHItemsScrollView.h"

@interface SHHomeViewController()

@property (nonatomic) NSArray *items;
@property (nonatomic) NSArray *banners;
@property (nonatomic) SHItemsScrollView *itemsView;

@end

@implementation SHHomeViewController

- (void) viewDidLoad {
  [super viewDidLoad];
  
  [SHRequest getHomeData:^(NSArray *items, NSArray *banners) {
    self.items = [NSArray arrayWithArray:items];
    self.banners = [NSArray arrayWithArray:banners];
  
    [self.view addSubview:
     [SHItemsScrollView
      newWithPoint:CGPointMake(0, 64)
      items:self.items tapItemCallback:^(CategoryModel *) {
      
        // TODO:
        
      }]];
  } failure:^(NSString *message) {
    NSLog(@"%@", message);
  }];
}


@end
