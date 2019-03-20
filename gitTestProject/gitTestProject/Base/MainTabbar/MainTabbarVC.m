//
//  MainTabbarVC.m
//  gitTestProject
//
//  Created by xinxinxiangzhao on 2019/3/12.
//  Copyright © 2019年 杨壮. All rights reserved.
//

#import "MainTabbarVC.h"
#import "MainNavigationVC.h"
#import "HomeViewController.h"
#import "SameCityViewController.h"
#import "MessageViewController.h"
#import "MainViewController.h"
#import "YZTabBar.h"
#import "oneViewController.h"
@interface MainTabbarVC ()

@end

@implementation MainTabbarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setValue:[[YZTabBar alloc] init] forKey:@"tabBar"];
    //直接用系统的tabbar简单实现
    [self addAllChildViewController];
    
    [[UITabBar appearance] setBackgroundImage:[self imageWithColor:[UIColor grayColor]]];
//    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabbar_bg"]];
    //去除顶部的黑线
    [[UITabBar appearance] setShadowImage:[UIImage new]];
    
    
}
// 添加全部的 childViewcontroller
- (void)addAllChildViewController
{
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    homeVC.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:homeVC title:@"首页" imageNamed:@"home_normal" selectedImageName:@"home_highlight"];
    
    SameCityViewController *activityVC = [[SameCityViewController alloc] init];
    
    [self addChildViewController:activityVC title:@"活动" imageNamed:@"mycity_normal" selectedImageName:@"mycity_highlight"];
    
    MessageViewController *findVC = [[MessageViewController alloc] init];
    
    [self addChildViewController:findVC title:@"发现" imageNamed:@"message_normal" selectedImageName:@"message_highlight"];
    
    MainViewController *mineVC = [[MainViewController alloc] init];
    
    [self addChildViewController:mineVC title:@"我的" imageNamed:@"account_normal" selectedImageName:@"account_highlight"];
}

// 添加某个 childViewController
- (void)addChildViewController:(UIViewController *)vc title:(NSString *)title imageNamed:(NSString *)imageNamed selectedImageName:(NSString *)selectedImageName
{
    MainNavigationVC *nav = [[MainNavigationVC alloc] initWithRootViewController:vc];
    // 如果同时有navigationbar 和 tabbar的时候最好分别设置它们的title
    vc.navigationItem.title = title;
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = [UIImage imageNamed:imageNamed];
    
    UIImage *image = [UIImage imageNamed:selectedImageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav.tabBarItem.selectedImage = image;
    
    [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont systemFontOfSize:11]} forState:UIControlStateSelected];

    [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor],NSFontAttributeName:[UIFont systemFontOfSize:11]} forState:UIControlStateNormal];
    
//    if ([vc isKindOfClass:[MainViewController class]]) {
//        
//        vc.navigationController.navigationBar.hidden = YES;
//    }
    
    [self addChildViewController:nav];
}

-(void)present{
    
    NSLog(@"点了大的按钮");
    oneViewController * oneVC = [[oneViewController alloc]init];
//    MainNavigationVC *nav = [[MainNavigationVC alloc] initWithRootViewController:oneVC];
   [self presentViewController:oneVC animated:YES completion:nil];
}

- (UIImage *)imageWithColor:(UIColor *)color
{
    NSParameterAssert(color != nil);
    
    CGRect rect = CGRectMake(0, 0, 1, 1);
    // Create a 1 by 1 pixel context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);   // Fill it with your color
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
