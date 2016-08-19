//
//  ViewController.m
//  XibLayerTool
//
//  Created by Shaochong Du on 16/8/19.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "ViewController.h"
#import "CustomerButton.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UIButton *myBtn;
@property (weak, nonatomic) IBOutlet UITextView *myTextView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegment;
@property (weak, nonatomic) IBOutlet CustomerButton *customerBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //  获取xib中已设置的layer属性
    NSLog(@"\n ------- myView xib property --------\n xibMaskToBounds->%d \n xibCornerRadius-> %.1f \n xibBorderWidth->%.1f\n xibBorderColor->%@",self.myView.xibMaskToBounds,self.myView.xibCornerRadius,self.myView.xibBorderWidth,self.myView.xibBorderColor);
    
    NSLog(@"\n ------- myBtn xib property --------\n xibMaskToBounds->%d \n xibCornerRadius-> %.1f \n xibBorderWidth->%.1f\n xibBorderColor->%@",self.myBtn.xibMaskToBounds,self.myBtn.xibCornerRadius,self.myBtn.xibBorderWidth,self.myBtn.xibBorderColor);
    
    NSLog(@"\n ------- myTextView xib property --------\n xibMaskToBounds->%d \n xibCornerRadius-> %.1f \n xibBorderWidth->%.1f\n xibBorderColor->%@",self.myTextView.xibMaskToBounds,self.myTextView.xibCornerRadius,self.myTextView.xibBorderWidth,self.myTextView.xibBorderColor);
    
    //  修改属性值
    self.myView.xibCornerRadius = arc4random()%60;
    CGFloat randomRed = arc4random()%255/255.0;
    CGFloat randomGreen = arc4random()%255/255.0;
    CGFloat randomBlue = arc4random()%255/255.0;
    self.myView.xibBorderColor = [UIColor colorWithRed:randomRed green:randomGreen blue:randomBlue alpha:0.5];
    
    //  自定义button 打印取值会有问题 没有设置get方法
    //  需要使用系统方法获取
//    NSLog(@"\n ------- customerBtn xib property --------\n xibMaskToBounds->%d \n xibCornerRadius-> %.1f \n xibBorderWidth->%.1f\n xibBorderColor->%@",self.customerBtn.xibMaskToBounds,self.customerBtn.xibCornerRadius,self.customerBtn.xibBorderWidth,self.customerBtn.xibBorderColor);
    NSLog(@"\n ------- customerBtn xib property --------\n xibMaskToBounds->%d \n xibCornerRadius-> %.1f \n xibBorderWidth->%.1f\n xibBorderColor->%@",self.customerBtn.layer.masksToBounds,self.customerBtn.layer.cornerRadius,self.customerBtn.layer.borderWidth,self.customerBtn.layer.borderColor);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
