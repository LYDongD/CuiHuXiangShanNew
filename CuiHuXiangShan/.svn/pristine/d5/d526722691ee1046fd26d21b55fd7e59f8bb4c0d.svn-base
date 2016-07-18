//
//  HttpManager.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/15.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "HttpManager.h"
#import <AFNetworking.h>
#import <MBProgressHUD.h>

@implementation HttpManager

+ (void)postUrl:(NSString*)api params:(NSDictionary*)params success:(void(^)(id json))success failure:(void(^)(void))failure {
    
    //1 准备URL
    NSString *fullUrlStr = [NSString stringWithFormat:@"%@%@",BaseUrl,api];
    
    //2 菊花
    [MBProgressHUD showHUDAddedTo:KeyWindow animated:YES];

    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    [sessionManager POST:fullUrlStr parameters:params constructingBodyWithBlock:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [MBProgressHUD hideHUDForView:KeyWindow animated:YES];
        
        //根据状态码进行回调
        NSInteger statusCode = [responseObject[@"status"] integerValue];
        switch (statusCode) {
            case 0:{ //参数异常
                if (failure) {
                    failure();
                }
            }
                break;
            case 1:{ //返回数据成功
                if (success) {
                    success(responseObject);
                }
            }
                break;
            case 2: //登录超时，需要重新登录
                break;
            default:
                break;
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [MBProgressHUD hideHUDForView:KeyWindow animated:YES];
        if (failure) {
            failure();
        }
    }];
}

@end
