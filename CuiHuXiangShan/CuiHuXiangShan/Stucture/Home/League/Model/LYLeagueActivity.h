//
//  LYLeagueActivity.h
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYBaseModel.h"

@interface LYLeagueActivity : LYBaseModel

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subTitle;
@property (nonatomic, copy) NSString *cover;
@property (nonatomic, assign) NSInteger chatNum;
@property (nonatomic, assign) NSInteger loveNum;

+ (NSArray*)fakeList;

@end
