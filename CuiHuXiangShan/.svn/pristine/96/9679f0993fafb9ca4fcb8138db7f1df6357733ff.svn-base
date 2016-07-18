//
//  UIView+Extension.h
//  SinaWB
//
//  Created by 陈祥 on 15/8/18.
//  Copyright (c) 2015年 cx. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,AppearanceStyle){
    
    // 圆
    roundStyle = 0,
    
    // 圆角
    roundCornerStyle,
    
    // 搜索框样式
    searchBarStyle,
};

@interface UIView (Extension)

@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;

@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;

@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,assign) CGSize size;
@property (nonatomic,assign) CGPoint origin;

/**
 *  外观样式
 */
@property (nonatomic,assign) AppearanceStyle appearanceStyle;


/**
 *  显示内容为空的提示
 *
 *  @param text 提示内容
 *  @param tag  提示label的tag值
 */
- (void)showEmptyWithText:(NSString*)text tag:(NSInteger)tag;

- (void)showEmptyWithText:(NSString*)text tag:(NSInteger)tag frame:(CGRect)frame;


/**
 *  隐藏内容为空的提示
 *
 *  @param tag 提示label
 */
- (void)hideEmptyViewWithTag:(NSInteger)tag;

/**
 *  输入错误时让输入框摇晃
 */
- (void)shake;

/**
 *  摇晃并显示错误信息
 *
 *  @param error 错误提示信息
 */
- (void)shakeWithError:(NSString*)error;
@end
