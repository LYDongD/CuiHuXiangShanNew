//
//  LYLeagueHomeCell.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYLeagueHomeCell.h"

#import "LYLeagueActivity.h"

@interface LYLeagueHomeCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *coverView;
@property (weak, nonatomic) IBOutlet UILabel *chatNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *loveNumLabel;

@property (weak, nonatomic) IBOutlet UIView *contentBackView;

- (IBAction)moreBtnClicked:(id)sender;

@end


@implementation LYLeagueHomeCell

+ (instancetype)cellWithTableView:(UITableView*)tableView{
    NSString *reuseId = @"LYLeagueHomeCell";
    LYLeagueHomeCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (!cell) {
        cell = [[NSBundle mainBundle]loadNibNamed:@"LYLeagueHomeCell" owner:nil options:nil][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell configureSelf];
    }
    
    return cell;
}

- (void)configureSelf{
    self.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    self.subtitleLabel.textColor = ThemFontColor;
    self.chatNumLabel.textColor = LightThemFontColor;
    self.loveNumLabel.textColor = LightThemFontColor;
    
    self.contentBackView.layer.shadowOffset = CGSizeMake(3, 3);
    self.contentBackView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.contentBackView.layer.shadowOpacity = 0.3;
}

-(void)setLeagueActivity:(LYLeagueActivity *)leagueActivity{
    _leagueActivity = leagueActivity;
    self.titleLabel.text = leagueActivity.title;
    self.subtitleLabel.text = leagueActivity.subTitle;
    self.coverView.image = [UIImage imageNamed:leagueActivity.cover];
    self.chatNumLabel.text = [NSString stringWithFormat:@"%ld",leagueActivity.chatNum];
    self.loveNumLabel.text = [NSString stringWithFormat:@"%ld",leagueActivity.loveNum];
}

+ (CGFloat)viewHeight{
    return 260;
}

- (IBAction)moreBtnClicked:(id)sender {
}
@end
