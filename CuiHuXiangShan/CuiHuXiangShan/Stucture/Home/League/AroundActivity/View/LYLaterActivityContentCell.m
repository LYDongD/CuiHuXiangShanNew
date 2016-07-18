//
//  LYLaterActivityContentCell.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYLaterActivityContentCell.h"


@interface LYLaterActivityContentCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;


@end


@implementation LYLaterActivityContentCell

+ (instancetype)cellWithTableView:(UITableView*)tableView{
    NSString *resuseId = @"LYLaterActivityContentCell";
    LYLaterActivityContentCell *cell = [tableView dequeueReusableCellWithIdentifier:resuseId];
    if (!cell) {
        cell = [[NSBundle mainBundle]loadNibNamed:@"LYLaterActivityContentCell" owner:nil options:nil][0];
        cell.titleLabel.textColor = ThemFontColor;
        cell.contentLabel.textColor = ThemFontColor;
    }
    return cell;
}

- (void)setTitle:(NSString *)title{
    _title = title;
    self.titleLabel.text = title;
}

- (void)setContent:(NSString *)content{
    _content = content;
    self.contentLabel.text = content;
}

@end
