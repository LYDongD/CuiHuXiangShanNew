//
//  LYHomeCell.h
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYHomeCell : UIView

@property (nonatomic, copy) NSString *logo;
//@property (nonatomic, copy) NSString *title;

+ (instancetype)homeCellWithLogo:(NSString*)logo title:(NSString*)title;

@end
