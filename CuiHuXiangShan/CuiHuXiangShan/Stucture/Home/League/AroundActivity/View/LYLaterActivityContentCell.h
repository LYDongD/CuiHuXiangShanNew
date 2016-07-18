//
//  LYLaterActivityContentCell.h
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYLaterActivityContentCell : UITableViewCell

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;

+ (instancetype)cellWithTableView:(UITableView*)tableView;


@end
