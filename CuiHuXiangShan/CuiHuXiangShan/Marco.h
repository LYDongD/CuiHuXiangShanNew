//
//  Marco.h
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/15.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#ifndef Marco_h
#define Marco_h


/** 服务器 **/
/** 测试环境 **/
#define BaseUrl @"http://120.24.47.85/yingbao/api/"
#define WebUrl @"http://120.24.47.85/yingbao/"
#define PicUrl @"http://120.24.47.85/upload/member/uploadImg.do"
#define BasePicUrl @"http://120.24.47.85/upload"

/** 本地 **/
//#define BaseUrl @"http://localhost:8080/cuihuwiangshan/"

/** 尺寸相关 **/
#define screenWidth [UIScreen mainScreen].bounds.size.width
#define screenHeight [UIScreen mainScreen].bounds.size.height
#define StatusBar_HEIGHT 20
#define NavigationBar_HEIGHT 44
#define NavigationBarIcon 20
#define TabBar_HEIGHT 49
#define TabBarIcon 30

/** 自定义log**/
#ifdef DEBUG
#define DLog(s,...) NSLog(@"=======%@(%d)=====%@",[[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__])
#else
#define DLog(s,...)
#endif

/** 系统  **/
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define CurrentSystemVersion [[UIDevice currentDevice] systemVersion]
#define KeyWindow [UIApplication sharedApplication].keyWindow
#define UserDefaults [GVUserDefaults standardUserDefaults]
#define WEAKSELF __weak typeof(self) weakSelf = self

/** 颜色 **/
// rgb颜色转换（16进制->10进制）
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
//RGBA的颜色设置
#define COLOR(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
//主题色
#define ThemColor COLOR(103, 187, 194, 1)
#define ThemFontColor COLOR(88, 88, 88, 1)
#define LightThemFontColor COLOR(169, 169, 169, 1)

#endif /* Marco_h */
