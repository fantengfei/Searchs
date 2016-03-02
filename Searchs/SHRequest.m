//
//  SHRequest.m
//  Searchs
//
//  Created by taffy on 16/3/2.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "SHRequest.h"

@implementation SHRequest


+ (void) getHomeData:(SuccessBlock)success failure:(FailureBlock)failure {
  [self.class getRequestWithURL:HOST
                     parameters:nil
                        success:^(id response, NSURLSessionTask *sessionTask) {
                          NSLog(@"%@", response);
                          NSLog(@"%@", sessionTask);
                        }
                        failure:^(NSError *error) {
                          NSLog(@"%@", error);
                        }];
}
@end
