//
//  MyButton.h
//  IB_DESIGNABLE_Demo
//
//  Created by Shaochong Du on 16/4/28.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import <UIKit/UIKit.h>
//  此处定义后  可在xib上直接预览效果
//IB_DESIGNABLE
@interface CustomerButton : UIButton

@property (nonatomic,assign) IBInspectable CGFloat borderWidth;
@property (nonatomic,strong) IBInspectable UIColor *borderColor;
@property (nonatomic,assign) IBInspectable CGFloat cornerRadius;

@end
