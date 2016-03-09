//
//  MainTabBarController.m
//  DouguoFood
//
//  Created by mac on 15/9/25.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "MainTabBarController.h"
#import "FoodMenuViewController.h"
#import "BetterFoodViewController.h"
#import "FindViewController.h"
#import "MyselfViewController.h"
#import "BaseNavigationController.h"

@interface MainTabBarController ()
{
    UIView *_tabBarView;
    NSArray *hightLightArr;
    NSArray *normalArr;
    NSArray *menuName;
    
    NSInteger _lastIndex;
}
@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tabBar.hidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    
    normalArr = @[@"tab_icon_cookbook_normal@2x.png", @"tab_icon_mall_normal@2x.png", @"tab_icon_events_normal@2x.png", @"tab_icon_mine_normal@2x.png"];
    hightLightArr = @[@"tab_icon_cookbook_hl@2x.png", @"tab_icon_mall_hl@2x.png", @"tab_icon_events_hl@2x.png", @"tab_icon_mine_hl@2x.png"];
    menuName = @[@"食谱", @"优食汇", @"圈圈", @"我的"];
    
    //创建控制器
    [self _initViewCtrl];
    
    //自定义tabbar
    [self _initTabBar];
}

- (void)_initTabBar
{
    _tabBarView = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenHeight - 44, kScreenWidth, 44)];
    _tabBarView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_tabBarView];
    
    //自定义按钮
    for (int i =0; i < 4; i++) {
        UIButton *barButton = [UIButton buttonWithType:UIButtonTypeCustom];
        barButton.frame = CGRectMake(kScreenWidth / 4 * i, 4, kScreenWidth / 4, 24);
        barButton.contentMode = UIViewContentModeScaleAspectFit;
        barButton.tag = 1000 + i;
        
        [barButton setImage:[UIImage imageNamed:normalArr[i]] forState:UIControlStateNormal];
        [barButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(kScreenWidth / 4 * i, 24, kScreenWidth / 4, 20)];
        label.tag = 2015 + i;
        label.textColor = [UIColor darkGrayColor];
        label.font = [UIFont systemFontOfSize:12];
        label.textAlignment = NSTextAlignmentCenter;
        label.text = menuName[i];
        
        if (barButton.tag == 1000) {
            [barButton setImage:[UIImage imageNamed:hightLightArr[0]] forState:UIControlStateNormal];
            label.textColor = [UIColor redColor];
        }
        
        [_tabBarView addSubview:label];
        [_tabBarView addSubview:barButton];
    }
}

- (void)btnClick:(UIButton *)btn
{
    self.selectedIndex = btn.tag - 1000;
    
    //获取上一次选择的button
    UIButton *button = (UIButton *)[_tabBarView viewWithTag:_lastIndex + 1000];
    [button setImage:[UIImage imageNamed:normalArr[_lastIndex]] forState:UIControlStateNormal];
    
    [btn setImage:[UIImage imageNamed:hightLightArr[btn.tag - 1000]] forState:UIControlStateNormal];
    
    //获取上一次选择的label
    UILabel *lastLabel = (UILabel *)[_tabBarView viewWithTag:_lastIndex + 2015];
    lastLabel.textColor = [UIColor darkGrayColor];
    
    UILabel *label = (UILabel *)[_tabBarView viewWithTag:btn.tag - 1000 + 2015];
    label.textColor = [UIColor redColor];
    
    //记录上一个选择的索引
    _lastIndex = btn.tag - 1000;    
}

- (void)_initViewCtrl
{
    //三级
    FoodMenuViewController *foodMenuVC = [[FoodMenuViewController alloc] init];
    BetterFoodViewController *betterVC = [[BetterFoodViewController alloc] init];
    FindViewController *findVC = [[FindViewController alloc] init];
    MyselfViewController *myselfVC = [[MyselfViewController alloc]init];
    NSArray *vcArr = @[foodMenuVC, betterVC, findVC, myselfVC];
    
    //二级
    NSMutableArray *mArr = [NSMutableArray array];
    for (int i = 0; i < vcArr.count; i ++) {
        BaseNavigationController *baseNav = [[BaseNavigationController alloc] initWithRootViewController:vcArr[i]];
        [mArr addObject:baseNav];
    }
    
    //一级
    self.viewControllers = mArr;
}

@end
