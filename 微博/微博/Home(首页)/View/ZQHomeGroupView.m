//
//  ZQHomeGroupView.m
//  微博
//
//  Created by lx on 16/5/26.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQHomeGroupView.h"

@interface ZQHomeGroupView () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak)UITableView *tableView;


@end

@implementation ZQHomeGroupView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIImage *backGroundImage = [UIImage imageNamed:@"market_sng_floatview_popwindow_bg.9"];
        
        backGroundImage = [backGroundImage stretchableImageWithLeftCapWidth:20 topCapHeight:20];
        
        [self setImage:backGroundImage];
        self.alpha = 0.9;
        
        
        [self setUpTableView];
        
        
    }
    return self;
}

- (void)setUpTableView{
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.backgroundColor = [UIColor clearColor];
    
    _tableView = tableView;

    [self addSubview:tableView];
    
}


#pragma mark -UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 0;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 0;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return nil;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    UILabel *label = [[UILabel alloc] initWithFrame:view.bounds];
    
    label.textColor = [UIColor orangeColor];
    label.text = @"三只小黄鸡";
    
    [view addSubview:label];
    
    return view;
    
}

@end
