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

NSString *_getURL(NSString *relativeString) {
  if (relativeString == nil) relativeString = @"";
  NSString *url = [NSString stringWithFormat:@"%@%@", TARGET_IPHONE_SIMULATOR ? LOCALHOST : HOST, relativeString];
  NSLog(@"%@", url);
  return url;
}


@end
