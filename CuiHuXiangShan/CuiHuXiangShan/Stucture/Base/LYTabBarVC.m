//
//  LYTabBarVC.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/16.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYTabBarVC.h"
#import "LYTabBarView.h"

#import "LYHomeVC.h"
#import "LYNeighboardVC.h"
#import "LYAroundVC.h"
#import "MimeViC.h"
#import "LYBaseNaVC.h"

@interface LYTabBarVC ()

@property (nonatomic, strong) LYBaseNaVC *homeNav;
@property (nonatomic, strong) LYBaseNaVC *friendNav;
@property (nonatomic, strong) LYBaseNaVC *aroundNav;
@property (nonatomic, strong) LYBaseNaVC *mimeNav;

@end

@implementation LYTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [self setUpTabBarController];
    [self setUpTabBarView];
    
    //默认选中首页
    [self selectHomeVC];
    
}

- (void)selectHomeVC{
    self.selectedIndex = 0;
    
}

/** 自定义tabBarView **/
- (void)setUpTabBarView{
     WEAKSELF;
     LYTabBarView *tabBarView = [LYTabBarView tabBarViewWithCellTap:^(NSInteger index) {
         weakSelf.selectedIndex = index;
     }];
    
    [self.view addSubview:tabBarView];
    [tabBarView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(0);
        make.right.equalTo(self.view.mas_right).offset(0);
        make.bottom.equalTo(self.view.mas_bottom).offset(0);
        make.height.mas_equalTo(TabBar_HEIGHT);
    }];
}

/** 设置tabbar容器 **/
- (void)setUpTabBarController{
    
    //添加子控制器
    LYBaseNaVC *homeNav = [[LYBaseNaVC alloc]initWithRootViewController:[LYHomeVC new]];
    LYBaseNaVC *friendNav = [[LYBaseNaVC alloc]initWithRootViewController:[LYNeighboardVC new]];
    LYBaseNaVC *aroundNav = [[LYBaseNaVC alloc]initWithRootViewController:[LYAroundVC new]];
    LYBaseNaVC *mimeNav = [[LYBaseNaVC alloc]initWithRootViewController:[MimeViC new]];
    
    [self setViewControllers:@[homeNav,friendNav,aroundNav,mimeNav]];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
