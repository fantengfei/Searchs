//
//  SHBaseRequest+Protected.h
//  Searchs
//
//  Created by taffy on 16/3/3.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "SHBaseRequest.h"

@protocol ProtectedMethod <NSObject>

+ (void) getRequestWithURL: (NSString *)url
                parameters: (NSDictionary *)parameters
                   success: (RequestSuccessBlock) success
                   failure: (RequestFailureBlock) failure;

@end

@interface SHBaseRequest (Protected)<ProtectedMethod>

@end
