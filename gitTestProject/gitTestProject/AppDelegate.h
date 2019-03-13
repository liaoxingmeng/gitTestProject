//
//  AppDelegate.h
//  gitTestProject
//
//  Created by yzxin on 2019/3/12.
//  Copyright © 2019年 杨壮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainTabbarVC.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// 如果需要全局访问tabBarController,可以把属性定义在这，在需要访问的地方这么访问
// id delegate = [[UIApplication sharedApplication].delegate tabBarController];
// MSTabBarController *tabBarController = [delegate tabBarController];
@property (nonatomic, strong) MainTabbarVC *tabBarController;
@end

