//
//  BaseNavigationController.m
//  DouguoFood
//
//  Created by mac on 15/9/25.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
// 导航栏颜色   [UIColor colorWithRed:1.000 green:0.245 blue:0.400 alpha:0.900]
    
    self.navigationBar.translucent = NO;
    
    UIImage *image = [UIImage imageNamed:@"nav-bg.png"];
    //修改图片尺寸
    UIGraphicsBeginImageContext(CGSizeMake(kScreenWidth, 64));
    [image drawInRect:CGRectMake(0, 0, kScreenWidth, 64)];
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    
    
    
}


- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
