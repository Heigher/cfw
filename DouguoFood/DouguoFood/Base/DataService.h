//
//  DataService.h
//  Project-2_Weibo
//
//  Created by mac on 15/9/13.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

typedef void(^FinishDidBlock)(AFHTTPRequestOperation *operation, id result);
typedef void(^FailuerBlock)(AFHTTPRequestOperation *operation, NSError *error);

@interface DataService : NSObject

+ (AFHTTPRequestOperation *)requestWithURL:(NSString *)url
                                    params:(NSMutableDictionary *)params
                                httpMethod:(NSString *)httpMethod
                            finishDidBlock:(FinishDidBlock)finishDidBlock
                              failuerBlock:(FailuerBlock)failuerBlock;

@end
