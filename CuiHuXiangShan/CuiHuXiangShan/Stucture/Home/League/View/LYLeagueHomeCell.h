//
//  LYLeagueHomeCell.h
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LYLeagueActivity;

@interface LYLeagueHomeCell : UITableViewCell

@property (nonatomic, strong) LYLeagueActivity *leagueActivity;

+ (instancetype)cellWithTableView:(UITableView*)tableView;

+ (CGFloat)viewHeight;


@end
