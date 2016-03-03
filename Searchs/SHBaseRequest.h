//
//  SHBaseRequest.h
//  Searchs
//
//  Created by taffy on 16/3/2.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

typedef NS_ENUM(NSInteger , SHRequestMethod) {
  SHRequestMethodGet = 0,
  SHRequestMethodPost,
  SHRequestMethodHead,
  SHRequestMethodPut,
  SHRequestMethodDelete,
  SHRequestMethodPatch
};


typedef void(^RequestFailureBlock)(NSError *error);
typedef void(^RequestSuccessBlock)(id response, NSURLSessionTask *sessionTask);

@interface SHBaseRequest: NSObject

NSURLSessionConfiguration *_configuration();
NSString *_getURL(NSString *relativeString);


@end
