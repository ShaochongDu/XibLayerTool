//
//  UIView+XibTools.m
//  ContraintTest
//
//  Created by Shaochong Du on 16/8/19.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "UIView+XibTools.h"
#import <objc/runtime.h>

@implementation UIView (XibTools)

-(void)setXibMaskToBounds:(BOOL)xibMaskToBounds
{
    self.layer.masksToBounds = xibMaskToBounds;
    objc_setAssociatedObject(self, @selector(xibMaskToBounds), @(xibMaskToBounds), OBJC_ASSOCIATION_ASSIGN);
}

-(BOOL)xibMaskToBounds
{
    id maskToBounds = objc_getAssociatedObject(self, _cmd);
    return maskToBounds ? [maskToBounds boolValue] : NO;
}

-(void)setXibCornerRadius:(CGFloat)xibCornerRadius
{
    self.layer.cornerRadius = xibCornerRadius;
    objc_setAssociatedObject(self, @selector(xibCornerRadius), @(xibCornerRadius), OBJC_ASSOCIATION_ASSIGN);
}

-(CGFloat)xibCornerRadius
{
    id cornerRadius = objc_getAssociatedObject(self, _cmd);
    return cornerRadius ? [cornerRadius doubleValue] : CGFLOAT_MIN;
}

-(void)setXibBorderWidth:(CGFloat)xibBorderWidth
{
    self.layer.borderWidth = xibBorderWidth;
    objc_setAssociatedObject(self, @selector(xibBorderWidth), @(xibBorderWidth), OBJC_ASSOCIATION_ASSIGN);
}

-(CGFloat)xibBorderWidth
{
    id borderWidth = objc_getAssociatedObject(self, _cmd);
    return borderWidth ? [borderWidth doubleValue] : CGFLOAT_MIN;
}

-(void)setXibBorderColor:(UIColor *)xibBorderColor
{
    self.layer.borderColor = xibBorderColor.CGColor;
    objc_setAssociatedObject(self, @selector(xibBorderColor), xibBorderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(UIColor *)xibBorderColor
{
    id borderColor = objc_getAssociatedObject(self, _cmd);
    return borderColor ? : [UIColor clearColor];
}

@end
