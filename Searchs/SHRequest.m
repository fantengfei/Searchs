//
//  SHRequest.m
//  Searchs
//
//  Created by taffy on 16/3/2.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "SHBaseRequest+Protected.h"
#import "SHRequest.h"
#import "CategoryModel.h"
#import "BannerModel.h"

@implementation SHRequest


+ (void) getHomeData:(void(^)(NSArray *, NSArray *))success failure:(FailureBlock)failure {
  [self.class getRequestWithURL:nil parameters:nil
                        success:^(id response, NSURLSessionTask *sessionTask) {
                          NSDictionary *dic = (NSDictionary *)response;
                          success([CategoryModel listWithDictionary:dic],[BannerModel listWithDictionary:dic]);
                        }
                        failure:^(NSError *error) {
                          failure([error.userInfo objectForKey:@"NSLocalizedDescription"]);
                        }];
}
@end
