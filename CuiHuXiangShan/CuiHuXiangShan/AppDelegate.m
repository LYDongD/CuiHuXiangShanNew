//
//  AppDelegate.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/15.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "AppDelegate.h"
#import "LYWelcomVC.h"

#import "LYBaseViewController.h"
#import "LYTabBarVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //1 创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    if (!UserDefaults.isNotFistUse) { //第一次使用
        [self setUpWelcomePage];
        UserDefaults.notFistUse = YES;
    }else{//不是第一次使用
        self.window.rootViewController = [[LYTabBarVC alloc]init];
    }
    
    return YES;
}

/** 欢迎页 **/
- (void)setUpWelcomePage{
    LYWelcomVC *welcomeVC = [[LYWelcomVC alloc]init];
    self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:welcomeVC];
}



@end
