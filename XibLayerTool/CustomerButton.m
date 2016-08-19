//
//  MyButton.m
//  IB_DESIGNABLE_Demo
//
//  Created by Shaochong Du on 16/4/28.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "CustomerButton.h"

@implementation CustomerButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bounds = self.bounds;   //若原热区小于44x44，则放大热区，否则保持原大小不变
    CGFloat widthDelta = MAX(44.0 - bounds.size.width, 0);
    CGFloat heightDelta = MAX(44.0 - bounds.size.height, 0);
    bounds = CGRectInset(bounds, -0.5 * widthDelta, -0.5 * heightDelta);    return CGRectContainsPoint(bounds, point);
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    if (borderWidth < 0){
        return;
    }
    self.layer.borderWidth = borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    if (cornerRadius < 0) {
        return;
    }
    self.layer.masksToBounds =YES;
    self.layer.cornerRadius = cornerRadius;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
