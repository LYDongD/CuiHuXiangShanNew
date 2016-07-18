//
//  LYLaterActivityHeadView.h
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYLaterActivityHeadView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *headImageView;
@property (weak, nonatomic) IBOutlet UILabel *chatNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *loveNumLabel;

+ (instancetype)headView;
@end
