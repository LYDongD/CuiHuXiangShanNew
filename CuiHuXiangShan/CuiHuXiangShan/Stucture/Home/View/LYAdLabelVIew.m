//
//  LYAdLabelVIew.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/16.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYAdLabelVIew.h"

@interface LYAdLabelVIew ()

@property (weak, nonatomic) IBOutlet UILabel *adLabel;


@end

@implementation LYAdLabelVIew

+ (instancetype)adLabelViewWithAdContent:(NSString*)adContent{
    LYAdLabelVIew *adLabelView = [[NSBundle mainBundle]loadNibNamed:@"LYAdLabelView" owner:nil options:nil][0];
    
    adLabelView.adLabel.textColor = ThemFontColor;
    adLabelView.adContent = adContent;
    return adLabelView;
}

- (void)setAdContent:(NSString *)adContent{
    _adContent = adContent;
    self.adLabel.text = adContent;
}



@end
