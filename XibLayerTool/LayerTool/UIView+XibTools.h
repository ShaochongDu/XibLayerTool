//
//  UIView+XibTools.h
//  ContraintTest
//
//  Created by Shaochong Du on 16/8/19.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import <UIKit/UIKit.h>

//  若使用子类继承方式，可定义以下宏，即可在xib上直接预览效果
//  类目貌似不可以预览效果
IB_DESIGNABLE


@interface UIView (XibTools)
/**
 *  设置视图是否允许切边
 */
@property (nonatomic, assign) IBInspectable BOOL xibMaskToBounds;
/**
 *  设置圆角大小
 */
@property (nonatomic, assign) IBInspectable CGFloat xibCornerRadius;
/**
 *  设置边框宽度
 */
@property (nonatomic, assign) IBInspectable CGFloat xibBorderWidth;
/**
 *  设置边框颜色
 */
@property (nonatomic, assign) IBInspectable UIColor *xibBorderColor;


@end
