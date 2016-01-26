//
//  LabelViewController.m
//  UIWindow
//
//  Created by mac on 16/1/21.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "LabelViewController.h"

@interface LabelViewController ()

@end

@implementation LabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel* label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, [UIScreen mainScreen].bounds.size.width-40, 50)];
    label1.text = @"I'm a label";
    label1.textAlignment = NSTextAlignmentNatural;
    label1.textColor = [UIColor colorWithRed:0.18f green:0.63f blue:0.86f alpha:1];
    label1.font = [UIFont fontWithName:@"Bodoni 72" size:30];
    //label1.font = [UIFont systemFontOfSize:15];
    label1.shadowColor = [UIColor grayColor];
    label1.shadowOffset = CGSizeMake(5, 5);
//    NSArray* font = [UIFont fontNamesForFamilyName:@"PingFang TC"];
//    for (NSArray* name in font) {
//        static int i = 1;
//        NSLog(@"name%i:%@", i, name);
//        i++;
//    }
//    for(NSArray* name in [UIFont familyNames])
//    {
//        static int  i = 1;
//        NSLog(@"familyname%i:%@", i, name);
//        i++ ;
//    }
    label1.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:label1];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
