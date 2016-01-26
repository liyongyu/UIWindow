//
//  ViewController.m
//  UIWindow
//
//  Created by mac on 16/1/21.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)btnClick
{
    UIView* view = [self.view viewWithTag:100];
    view.frame = CGRectMake(view.frame.origin.x-5, view.frame.origin.y-10,view.frame.size.width+10, view.frame.size.height+10);
}


#pragma mark - lifecircle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 视图
    UIView* view1 = [[UIView alloc] init];
    // 0位置 大小
    view1.frame = CGRectMake(0, 0, 100, 100);
    
    // 背景颜色
    view1.backgroundColor = [UIColor redColor];
    
    // 将视图加入父视图中
    [self.view addSubview:view1];
    UIView* subview1 = [[UIView alloc] init];
    subview1.frame = CGRectMake(50,20,50,500);
    subview1.backgroundColor = [UIColor greenColor];
    
    // 显示视图尺寸
    NSLog(@"w:%f, h:%f", [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    NSLog(@"x:%f, y:%f, w:%f, h:%f", view1.frame.origin.x, view1.frame.origin.y, view1.frame.size.width, view1.frame.size.height);
    NSLog(@"x:%f, y:%f", view1.center.x, view1.center.y);
    [view1 addSubview:subview1];
    UIView* subview2 = [[UIView alloc] initWithFrame:CGRectMake(10, 20, 35, 75)];
    subview2.backgroundColor = [UIColor orangeColor];
    [view1 addSubview:subview2];
    
    // 更改子视图的颜色
    NSArray* subViewArray = view1.subviews;
    for(UIView* view in subViewArray)
    {
        view.backgroundColor =  [UIColor whiteColor];
    }
    
    // 通过tag值
    //view1.tag = 0;
    subview1.tag = 0;
    subview2.tag = 1;
    for(UIView* view in subViewArray)
    {
    if(view.tag == 1)
        view.backgroundColor = [UIColor purpleColor];
    }
    
    // 层级处理
    
    // 交换两个层的视图
    [view1 exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    // 插入视图到指定层
    UIView* subview3 = [[UIView alloc] initWithFrame:CGRectMake(50, 35, 23, 213)];
    [view1 insertSubview:subview3 aboveSubview:subview2];
    UIView* subview4 = [[UIView alloc] initWithFrame:CGRectMake(60, 40, 72, 24)];
    [view1 insertSubview:subview4 atIndex:3];
    
    // 将view放到最顶层或最底层
    [view1 bringSubviewToFront:subview1];
    [view1 sendSubviewToBack:subview2];
    
    // 自适应
    UIView* backView = [[UIView alloc] init];
    backView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-25,400 , 50, 50);
    backView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:backView];
    
    //准许子视图自适应
    backView.autoresizesSubviews = YES;
    backView.tag = 100;
    
    
    UIView* topView = [[UIView alloc] init];
    topView.frame = CGRectMake(10, 10, 30, 30);
    topView.backgroundColor = [UIColor yellowColor];
    
    //设置子视图的适应方式
    topView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    [backView addSubview:topView];
    
    
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(10, 200, 100, 30);
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
