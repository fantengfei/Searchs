//
//  SHRequest.h
//  Searchs
//
//  Created by taffy on 16/3/2.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "SHBaseRequest.h"

typedef void(^SuccessBlock) (id model);
typedef void(^FailureBlock) (NSString *message);

@interface SHRequest : SHBaseRequest

+ (void) getHomeData: (void(^)(NSArray *, NSArray *)) success failure: (FailureBlock) failure;

@end
