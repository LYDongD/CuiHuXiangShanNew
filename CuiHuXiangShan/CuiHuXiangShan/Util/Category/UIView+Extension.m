//
//  UIView+Extension.m
//  SinaWB
//
//  Created by 陈祥 on 15/8/18.
//  Copyright (c) 2015年 cx. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)


- (CGFloat)x{
    return self.origin.x;
}

- (void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)y{
    return self.origin.y;
}

- (void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)width{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGSize)size{
    return self.frame.size;
}

- (void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGPoint)origin{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin{
    
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGFloat)centerX{
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX{
    CGPoint centerPoint = self.center;
    centerPoint.x = centerX;
    self.center = centerPoint;
}

- (CGFloat)centerY{
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY{
    CGPoint centerPoint = self.center;
    centerPoint.y = centerY;
    self.center = centerPoint;
}

/**
 *  输入错误时让输入框摇晃
 */
- (void)shake {
    CGFloat translateX = 4;
    CGAffineTransform translateLeft = CGAffineTransformMakeTranslation(-translateX, 0);
    CGAffineTransform translateRight = CGAffineTransformMakeTranslation(translateX, 0);
    
    self.transform = translateLeft;
    [UIView animateWithDuration:0.07 delay:0 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
        [UIView setAnimationRepeatCount:2];
        self.transform = translateRight;
    } completion:^(BOOL finished) {
        if (finished) {
            [UIView animateWithDuration:0.05 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                self.transform = CGAffineTransformIdentity;
            } completion:nil];
        }
    }];
}

- (void)shakeWithError:(NSString*)error{
    
    [self shake];
}

@end
