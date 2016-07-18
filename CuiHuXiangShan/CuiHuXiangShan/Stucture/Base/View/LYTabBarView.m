//
//  LYTabBarView.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/16.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYTabBarView.h"

@interface LYTabBarView ()

@property (weak, nonatomic) IBOutlet UIView *homeCell;
@property (weak, nonatomic) IBOutlet UIView *friendCell;
@property (weak, nonatomic) IBOutlet UIView *aroundCell;
@property (weak, nonatomic) IBOutlet UIView *mimeCell;

@property (weak, nonatomic) IBOutlet UILabel *homeLabel;
@property (weak, nonatomic) IBOutlet UILabel *frirendLabel;
@property (weak, nonatomic) IBOutlet UILabel *arroundLabel;
@property (weak, nonatomic) IBOutlet UILabel *mimeLabel;

@property (weak, nonatomic) IBOutlet UIImageView *homeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *friendImageView;
@property (weak, nonatomic) IBOutlet UIImageView *aroundImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mimeImageView;

@property (nonatomic, strong) NSArray* imageViewList;
@property (nonatomic, strong) NSArray* titleLabelList;
@property (nonatomic, strong) NSArray* cellList;

@property (nonatomic, copy) void(^cellTapHandler)(NSInteger index);
@end


@implementation LYTabBarView


+ (instancetype)tabBarViewWithCellTap:(void(^)(NSInteger index))cellTapHandler {
    LYTabBarView *tabBarView = [[NSBundle mainBundle]loadNibNamed:@"LYTabBarView" owner:nil options:nil][0];
    
    tabBarView.cellList = @[tabBarView.homeCell,tabBarView.friendCell,tabBarView.aroundCell,tabBarView.mimeCell];
    tabBarView.imageViewList = @[tabBarView.homeImageView,tabBarView.friendImageView,tabBarView.aroundImageView,tabBarView.mimeImageView];
    tabBarView.titleLabelList = @[tabBarView.homeLabel,tabBarView.frirendLabel,tabBarView.arroundLabel,tabBarView.mimeLabel];
  
    //监听模块点击
    int cellNum = 4;
    for (int i = 0; i < cellNum; i++) { //监听每个cell
        UIView *cell = tabBarView.cellList[i];
        UIImageView *currentLogoView = tabBarView.imageViewList[i];
        UILabel *currentLabel = tabBarView.titleLabelList[i];
        [cell bk_whenTapped:^{
            //1 清空状态
            for (int i = 0; i < cellNum; i ++) { //清空所有cell
                UIImageView* imageView = tabBarView.imageViewList[i];
                UILabel *titleLabel = tabBarView.titleLabelList[i];
                imageView.highlighted = NO;
                titleLabel.textColor = ThemFontColor;
            }
            
            //2 设置当前选中
            currentLogoView.highlighted = YES;
            currentLabel.textColor = ThemColor;
            
            //3 处理block
            cellTapHandler(i);
        }];
    }
    
    //默认选中首页
    tabBarView.homeImageView.highlighted = YES;
    tabBarView.homeLabel.textColor = ThemColor;
    
    return tabBarView;
}





@end
