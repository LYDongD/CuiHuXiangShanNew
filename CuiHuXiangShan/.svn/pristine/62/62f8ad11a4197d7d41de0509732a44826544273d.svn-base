//
//  LYBaseViewController.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/15.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYBaseViewController.h"

@interface LYBaseViewController ()

@end

@implementation LYBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
}

- (void)setTitleWithBackBtn:(NSString*)title{
    
    //非导航控制器管理
    if (self.navigationController.childViewControllers.count == 0) {
        return;
    }
    
    self.navigationItem.title = title;
    if (self.navigationController.childViewControllers.count > 1) { //非根控制器
        //返回按钮
        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        backBtn.frame = CGRectMake(0, 0, NavigationBarIcon, NavigationBarIcon);
        [backBtn setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
        [backBtn bk_addEventHandler:^(id sender) {
            [self.navigationController popViewControllerAnimated:YES];
        } forControlEvents:UIControlEventTouchUpInside];
    }
    
}



@end
