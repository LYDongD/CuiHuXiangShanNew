//
//  LYLaterActivityHeadView.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYLaterActivityHeadView.h"

@interface LYLaterActivityHeadView ()




@end

@implementation LYLaterActivityHeadView

+ (instancetype)headView {
    LYLaterActivityHeadView *headView = [[NSBundle mainBundle]loadNibNamed:@"LYLaterActivityHeadView" owner:nil options:nil][0];
    headView.chatNumLabel.textColor = ThemFontColor;
    headView.loveNumLabel.textColor = ThemFontColor;
    return headView;
}



@end
