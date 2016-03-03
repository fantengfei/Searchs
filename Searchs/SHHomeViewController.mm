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

@interface SHHomeViewController()

@property (nonatomic) NSArray *items;
@property (nonatomic) NSArray *banners;

@end

@implementation SHHomeViewController

- (void) viewDidLoad {
  [super viewDidLoad];

  [SHRequest getHomeData:^(NSArray *banners, NSArray *items) {
    self.items = [NSArray arrayWithArray:items];
    self.banners = [NSArray arrayWithArray:banners];
  } failure:^(NSString *message) {
    NSLog(@"%@", message);
  }];
}


@end
