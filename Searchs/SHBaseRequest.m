//
//  SHBaseRequest.m
//  Searchs
//
//  Created by taffy on 16/3/2.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "SHBaseRequest.h"

@implementation SHBaseRequest

NSURLSessionConfiguration *_configuration() {
  return [NSURLSessionConfiguration defaultSessionConfiguration];
}

+ (void) getRequestWithURL:(NSString *)url
                parameters:(NSDictionary *)parameters
                   success:(RequestSuccessBlock)success
                   failure:(RequestFailureBlock)failure {

  AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
  manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
  [manager GET:url parameters:parameters progress:nil success:^(NSURLSessionTask *task, id responseObject) {
    success(responseObject, task);
  } failure:^(NSURLSessionTask *operation, NSError *error) {
    failure(error);
  }];
}

@end
