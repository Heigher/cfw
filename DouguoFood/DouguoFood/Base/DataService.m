//
//  DataService.m
//  Project-2_Weibo
//
//  Created by mac on 15/9/13.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "DataService.h"

#define BASE_URL @"https://api.douguo.net/"

@implementation DataService

+ (AFHTTPRequestOperation *)requestWithURL:(NSString *)url params:(NSMutableDictionary *)params httpMethod:(NSString *)httpMethod finishDidBlock:(FinishDidBlock)finishDidBlock failuerBlock:(FailuerBlock)failuerBlock
{
    if (params == nil) {
        params = [NSMutableDictionary dictionary];
    }
    
    //拼接URL
    NSMutableString *urlStr = [NSMutableString stringWithFormat:@"%@%@", BASE_URL, url];
//    //参数处理
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    NSDictionary *sinaweiboInfo = [defaults objectForKey:@"SinaWeiboAuthData"];
//    NSString * accessTokenKey = [sinaweiboInfo objectForKey:@"AccessTokenKey"];
//    if (accessTokenKey.length == 0) {
//        return nil;
//    }
//    
//    [params setObject:accessTokenKey forKey:@"access_token"];
    
    //创建request对象
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    
    AFHTTPRequestOperation *operation = nil;
    
    
    
    if ([httpMethod isEqualToString:@"GET"]) {
        operation = [manager GET:urlStr parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
            //请求成功
            NSLog(@"AF-GET请求成功");
            if (finishDidBlock) {
                finishDidBlock(operation, responseObject);
            }
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            //请求失败
            NSLog(@"AF-GET请求失败");
            if (failuerBlock) {
                failuerBlock(operation, error);
            }
        }];
    }else if ([httpMethod isEqualToString:@"POST"]) {
        BOOL isData = NO;
        
        for (NSString *key in params) {
            id value = params[key];
            if ([value isKindOfClass:[NSData class]]) {
                isData = YES;
                break;
            }
        }
        
        if (!isData) {
            //没有文件
            operation = [manager POST:urlStr parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
                //请求成功
                NSLog(@"AF-POST(非文件)请求成功");
                if (finishDidBlock) {
                    finishDidBlock(operation, responseObject);
                }
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                //请求失败
                NSLog(@"AF-POST(非文件)请求失败");
                if (failuerBlock) {
                    failuerBlock(operation, error);
                }
            }];
        }else {
            operation = [manager POST:urlStr parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
                for (NSString *key in params) {
                    id value = params[key];
                    if ([value isKindOfClass:[NSData class]]) {
                        [formData appendPartWithFileData:value
                                                    name:key
                                                fileName:key
                                                mimeType:@"image/jpeg"];
                    }
                }
            } success:^(AFHTTPRequestOperation *operation, id responseObject) {
                //请求成功
                NSLog(@"AF-POST(带文件)请求成功");
                if (finishDidBlock) {
                    finishDidBlock(operation, responseObject);
                }
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                //请求失败
                NSLog(@"AF-POST(带文件)请求失败");
                if (failuerBlock) {
                    failuerBlock(operation, error);
                }
            }];
        }
    }
    
    //设置返回数据的解析方式
    operation.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingMutableContainers];
    
    return operation;
}












@end
