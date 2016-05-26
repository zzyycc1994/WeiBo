//
//  AppDelegate.m
//  微博
//
//  Created by lx on 16/5/26.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "AppDelegate.h"
#import "ZQBaseTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window =[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];
    
    ZQBaseTabBarController *tabbar = [[ZQBaseTabBarController alloc] init];
    
    self.window.rootViewController = tabbar;
    
    return YES;
}


@end
