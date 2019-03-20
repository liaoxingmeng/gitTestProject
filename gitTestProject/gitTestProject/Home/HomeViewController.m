//
//  HomeViewController.m
//  gitTestProject
//
//  Created by xinxinxiangzhao on 2019/3/12.
//  Copyright © 2019年 杨壮. All rights reserved.
//

#import "HomeViewController.h"
#import "homeNextVC.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addNavigationItemWithTitles:@[@"登陆"] isLeft:YES target:self action:@selector(naviBtnClick:) tags:@[@1000]];
    
    [self addNavigationItemWithTitles:@[@"注册"] isLeft:NO target:self action:@selector(naviBtnClick:) tags:@[@1001]];
    
    
   
   
  
}
-(void)naviBtnClick:(UIButton *)btn
{
    
    if (btn.tag == 1000) {
        YZLog(@"登陆按钮被点击");
    }else{
        YZLog(@"注册按钮被点击");
        homeNextVC * vc = [[homeNextVC alloc]init];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
    }
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
