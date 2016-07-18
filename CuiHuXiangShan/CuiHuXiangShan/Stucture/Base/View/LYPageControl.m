//
//  LYPageControl.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/16.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYPageControl.h"

@implementation LYPageControl

-(id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.activeImage = [UIImage imageNamed:@"icarousel_select"];
    self.inactiveImage = [UIImage imageNamed:@"icarousel"];
    return self;
 }

- (void) updateDots {
    for (int i = 0; i < [self.subviews count]; i++) {
        UIImageView * dot = [self imageViewForSubview:  [self.subviews objectAtIndex: i]];
        
        if (i == self.currentPage) {
            dot.image = self.activeImage;
        }else{
            dot.image = self.inactiveImage;
        }
        
    }
}

- (UIImageView *) imageViewForSubview: (UIView *) view {
    UIImageView * dot = nil;
    if ([view isKindOfClass: [UIView class]]) {
        for (UIView* subview in view.subviews) {
            if ([subview isKindOfClass:[UIImageView class]]) {
                dot = (UIImageView *)subview;
                break;
            }
        }
        if (dot == nil) {
            dot = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, view.frame.size.width + 5, view.frame.size.height)];
            [view addSubview:dot];
        }
    }else {
        dot = (UIImageView *) view;
    }
    
    return dot;
}

- (void)setCurrentPage:(NSInteger)currentPage {
    [super setCurrentPage:currentPage];
    [self updateDots];
}

@end
