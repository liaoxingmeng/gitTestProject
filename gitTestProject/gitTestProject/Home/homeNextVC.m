//
//  homeNextVC.m
//  gitTestProject
//
//  Created by xinxinxiangzhao on 2019/3/20.
//  Copyright © 2019年 杨壮. All rights reserved.
//

#import "homeNextVC.h"

@interface homeNextVC ()

@end

@implementation homeNextVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addNavigationItemWithImageNames:@[@"account_highlight"] isLeft:NO target:self action:@selector(testBlick:) tags:@[@1003]];
    
    self.navigationController.navigationBar.hidden = YES;
    self.view.backgroundColor = KBlackColor;
    
}
-(void)testBlick:(UIButton *)btn{
    
    YZLog(@"有效");
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
