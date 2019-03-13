//
//  YZTabBar.h
//  gitTestProject
//
//  Created by xinxinxiangzhao on 2019/3/12.
//  Copyright © 2019年 杨壮. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol presentVC <NSObject>

-(void)present;

@end

@interface YZTabBar : UITabBar

/// 中间凸起的按钮
@property (nonatomic, strong) UIButton *centerBtn;
@property(nonatomic,weak)id<presentVC>delegate;
@end

NS_ASSUME_NONNULL_END
