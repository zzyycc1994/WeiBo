//
//  ZQBaseTabBarController.m
//  微博
//
//  Created by lx on 16/5/26.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQBaseTabBarController.h"
#import "ZQBaseNavigationController.h"

#import "ZQHomeViewController.h"
#import "ZQMessageViewController.h"
#import "ZQAddViewController.h"
#import "ZQDiscoverViewController.h"
#import "ZQMeViewController.h"

@interface ZQBaseTabBarController ()

@end

@implementation ZQBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.view.backgroundColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor orangeColor];
    
    [self setUpAllViewControllers];
    
}

- (void)setUpAllViewControllers{
    
    ZQHomeViewController *home = [[ZQHomeViewController alloc] init];
    
    [self setUpOneViewController:home
                       withImage:[UIImage imageNamed:@"tabbar_home"]
                    withSelImage:[UIImage imageNamed:@"tabbar_home_highlighted"]
                       withTitle:@"首页"];
    
    ZQMessageViewController *message = [[ZQMessageViewController alloc] init];
    
    [self setUpOneViewController:message
                       withImage:[UIImage imageNamed:@"tabbar_message_center"]
                    withSelImage:[UIImage imageNamed:@"tabbar_message_center_highlighted"]
                       withTitle:@"消息"];
    
    ZQAddViewController *add = [[ZQAddViewController alloc] init];
    
    [self setUpOneViewController:add withImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] withSelImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] withTitle:@""];
     
    ZQDiscoverViewController *discover = [[ZQDiscoverViewController alloc] init];
    
    [self setUpOneViewController:discover
                       withImage:[UIImage imageNamed:@"tabbar_discover"]
                    withSelImage:[UIImage imageNamed:@"tabbar_discover_highlighted"]
                       withTitle:@"发现"];
    
    ZQMeViewController *me = [[ZQMeViewController alloc] init];
    
    [self setUpOneViewController:me withImage:[UIImage imageNamed:@"tabbar_profile"] withSelImage:[UIImage imageNamed:@"tabbar_profile_highlighted"] withTitle:@"我"];
    
}

- (void)setUpOneViewController:(UIViewController *)viewController withImage:(UIImage *)image withSelImage:(UIImage *)selImage withTitle:(NSString *)title{
    
    viewController.title = title;
    viewController.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    ZQBaseNavigationController *nvc = [[ZQBaseNavigationController alloc] initWithRootViewController:viewController];
    
    [self addChildViewController:nvc];

}


@end
