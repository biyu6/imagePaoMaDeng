//
//  MyViewController.m
//  test_home
//
//  Created by hc_hzc on 16/8/2.
//  Copyright © 2016年 hc_hzc. All rights reserved.
//

#import "MyViewController.h"
#import "NewsRollView.h"

//获取屏幕 宽度、高度
#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
@interface MyViewController ()
@property (nonatomic, strong)NewsRollView *nrView;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    NSArray *arr = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"];


    _nrView = [[NewsRollView alloc]initWithFrame:CGRectMake(20, 100, SCREEN_WIDTH - 40, 200 ) intervalTime:1.0 itemsArray:arr sleepTime:6];
    [self.view addSubview:_nrView];
    
    
    
}


@end
