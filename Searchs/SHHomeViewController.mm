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

@implementation SHHomeViewController

- (void) viewDidLoad {
  [super viewDidLoad];
  
  self.title = @"Searchs";
  
  
  [SHRequest getHomeData:^(id model) {
    
  } failure:^(NSString *message) {
    
  }];

}


@end
