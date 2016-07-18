//
//  LYHomeCell.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYHomeCell.h"

@interface LYHomeCell ()

@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end

@implementation LYHomeCell

+ (instancetype)homeCellWithLogo:(NSString*)logo title:(NSString*)title{
    LYHomeCell *cell = [[NSBundle mainBundle]loadNibNamed:@"LYHomeCell" owner:nil options:nil][0];
    
    cell.logo = logo;
    cell.title = title;
    cell.titleLabel.textColor = ThemFontColor;
    cell.layer.cornerRadius = 10;
    cell.layer.masksToBounds = YES;
    return cell;
}


- (void)setLogo:(NSString *)logo{
    _logo = logo;
    self.logoImageView.image = [UIImage imageNamed:logo];
}

- (void)setTitle:(NSString *)title{
    title = title;
    self.titleLabel.text = title;
}

@end
