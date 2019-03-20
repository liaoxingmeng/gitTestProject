//
//  UntilsMacros.h
//  gitTestProject
//
//  Created by xinxinxiangzhao on 2019/3/13.
//  Copyright © 2019年 杨壮. All rights reserved.
//

#ifndef UntilsMacros_h
#define UntilsMacros_h

//获取屏幕宽度与高度
#define SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
#define SCREENH_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_BOUNDS [UIScreen mainScreen].bounds

//获取系统对象
#define kApplication        [UIApplication sharedApplication]
#define kAppWindow          [UIApplication sharedApplication].delegate.window
#define kAppDelegate        [AppDelegate shareAppDelegate]
#define kRootViewController [UIApplication sharedApplication].delegate.window.rootViewController
#define kUserDefaults       [NSUserDefaults standardUserDefaults]
#define kNotificationCenter [NSNotificationCenter defaultCenter]

//简单判断当前机型
#define DEVICE_IS_IPHONE6P ([[UIScreen mainScreen] bounds].size.height == 736)
#define DEVICE_IS_IPHONE6 ([[UIScreen mainScreen] bounds].size.height == 667)
#define DEVICE_IS_IPHONE5 ([[UIScreen mainScreen] bounds].size.height == 568)
#define DEVICE_IS_IPHONE4 ([[UIScreen mainScreen] bounds].size.height == 480)
#define DEVICE_IS_IPHONEX ([[UIScreen mainScreen] bounds].size.height >= 812)

// 适配iPhone X 状态栏高度
#define  StatusBarHeight (SCREENH_HEIGHT >= 812.0 ? 44.f : 20.f)
// 适配iPhone X Tabbar高度
#define  TabbarHeight    (SCREENH_HEIGHT >= 812.0 ? 83.f : 49.f)
// 适配iPhone X Tabbar距离底部的距离
#define  TabbarSafeBottomMargin (SCREENH_HEIGHT >= 812.0 ? 34.f : 0.f)
// 适配iPhone X 导航栏高度
#define  NavHeight  (SCREENH_HEIGHT >= 812.0 ? 88.f : 64.f)

//打印日志
#ifdef DEBUG
#define YZLog(...) NSLog(@"%s 第%d行 \n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#else
#define YZLog(...)

#endif

//弱引用宏
#define WEAKSELFS  typeof(self) __weak weakSelf=self;

//拼接字符串
#define NSStringFormat(format,...) [NSString stringWithFormat:format,##__VA_ARGS__]

//颜色
#define KClearColor [UIColor clearColor]
#define KWhiteColor [UIColor whiteColor]
#define KBlackColor [UIColor blackColor]
//随机色生成
#define kRandomColor    KRGBColor(arc4random_uniform(256)/255.0,arc4random_uniform(256)/255.0,arc4random_uniform(256)/255.0)
//#define RGB
#define ColorWithRGB(r, g, b) [UIColor colorWithRed:(r) / 255.f green:(g) / 255.f blue:(b) / 255.f alpha:1.f]

//字体
#define BOLDSYSTEMFONT(FONTSIZE)[UIFont boldSystemFontOfSize:FONTSIZE]
#define SYSTEMFONT(FONTSIZE)    [UIFont systemFontOfSize:FONTSIZE]

#endif /* UntilsMacros_h */
