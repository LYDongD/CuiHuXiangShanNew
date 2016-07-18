//
//  LYLeagueActivity.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYLeagueActivity.h"

@implementation LYLeagueActivity

+ (NSArray*)fakeList{
    NSMutableArray *tem = [@[]mutableCopy];
    for (int i = 0; i < 5; i ++) {
        LYLeagueActivity *model = [[LYLeagueActivity alloc]init];
        model.title = @"商家优惠活动";
        model.subTitle = @"华府班特--全场半价优惠";
        model.loveNum = 1526;
        model.chatNum = 88;
        model.cover = [NSString stringWithFormat:@"图0%d",i];
        [tem addObject:model];
    }
    
    return tem;
}
@end
