//
//  ZQHomeViewController.m
//  微博
//
//  Created by lx on 16/5/26.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQHomeViewController.h"
#import "ZQHomeGroupView.h"

@interface ZQHomeViewController ()

@end

@implementation ZQHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setUpNavagationBar];
    
    [self setUpSearchView];

}

- (void)setUpSearchView{
    
}

//设置导航栏
- (void)setUpNavagationBar{
    
    //左侧按钮
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = CGRectMake(0, 0, 30, 30);
    [leftButton setImage:[UIImage imageNamed:@"navigationbar_friendattention"] forState:UIControlStateNormal];
    [leftButton setImage:[UIImage imageNamed:@"navigationbar_friendattention_dot"] forState:UIControlStateSelected];
    [leftButton addTarget:self action:@selector(leftButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem = leftBarButton;
    
    //右侧按钮
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0, 30, 30);
    [rightButton setImage:[UIImage imageNamed:@"navigationbar_icon_radar"] forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(rightButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
    //标题
    UIButton *titleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    titleButton.frame = CGRectMake(0, 0, 100, 30);
    [titleButton setTitle:@"一个小标题" forState:UIControlStateNormal];
    [titleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [titleButton addTarget:self action:@selector(titleViewButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.titleView = titleButton;
}

//左侧按钮点击事件
- (void)leftButtonClick:(UIButton *)sender{
    
}

//右侧按钮点击事件
- (void)rightButtonClick:(UIButton *)sender{
    
}

//标题按钮点击事件
- (void)titleViewButtonClick:(UIButton *)sender{
    
    //如果已经存在ZQHomeGroupView对象,移除并返回
    for (UIView *view in self.view.subviews) {
        
        if ([view isKindOfClass:[ZQHomeGroupView class]]) {
            
            [view removeFromSuperview];
            return;
        }
    }
    
    //创建groupView
    ZQHomeGroupView *groupView = [[ZQHomeGroupView alloc] initWithFrame:CGRectMake(0, 0, 200, 400)];
    
    groupView.centerX = self.view.centerX;
    
    [self.view addSubview:groupView];
}

//屏幕触摸点击
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //如果存在ZQHomeGroupView对象,移除
    for (UIView *view in self.view.subviews) {
        
        if ([view isKindOfClass:[ZQHomeGroupView class]]) {
            
            [view removeFromSuperview];
        }
    }

    
}

@end
