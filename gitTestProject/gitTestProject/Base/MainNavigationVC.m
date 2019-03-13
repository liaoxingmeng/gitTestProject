//
//  MainNavigationVC.m
//  gitTestProject
//
//  Created by xinxinxiangzhao on 2019/3/12.
//  Copyright © 2019年 杨壮. All rights reserved.
//

#import "MainNavigationVC.h"

@interface MainNavigationVC ()

@end

@implementation MainNavigationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UINavigationBar * navBar = [UINavigationBar appearance];
    navBar.translucent = NO;
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont systemFontOfSize:18.0]}];
    [navBar setBarTintColor:[UIColor redColor]];
    
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
