//
//  RootDrawerViewController.m
//  DouguoFood
//
//  Created by mac on 15/9/25.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "RootDrawerViewController.h"
#import "LeftDrawerViewController.h"
#import "MainTabBarController.h"
#import "MMExampleDrawerVisualStateManager.h"

@interface RootDrawerViewController ()

@end

@implementation RootDrawerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.leftDrawerViewController = [[LeftDrawerViewController alloc] init];
    self.centerViewController = [[MainTabBarController alloc] init];
    self.rightDrawerViewController = nil;

    //左侧视图的宽度
    [self setMaximumLeftDrawerWidth:200];
    //手势的作用区域
    [self setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    //配置动画的回调函数
    [self setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
        
        MMDrawerControllerDrawerVisualStateBlock block;
        block = [[MMExampleDrawerVisualStateManager sharedManager] drawerVisualStateBlockForDrawerSide:drawerSide];
        if (block) {
            block(drawerController, drawerSide, percentVisible);
        }
    }];
    
    
    //设置动画
    [[MMExampleDrawerVisualStateManager sharedManager] setLeftDrawerAnimationType:MMDrawerAnimationTypeParallax];

}




@end
