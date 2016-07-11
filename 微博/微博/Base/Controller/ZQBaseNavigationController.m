//
//  ZQBaseNavigationController.m
//  微博
//
//  Created by lx on 16/5/26.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQBaseNavigationController.h"

@interface ZQBaseNavigationController ()

@end

@implementation ZQBaseNavigationController

+ (void)initialize
{
    UINavigationBar *bar = [UINavigationBar appearance];
    
    UIImage *image = [UIImage imageNamed:@"hotweibo_navigation_background.9"];
    
    bar.shadowImage = [UIImage imageNamed:@"userinfo_navigationbar_shadow"];
    
    [bar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

    NSLog(@"sssss");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
