//
//  MyViewController.m
//  test_home
//
//  Created by hc_hzc on 16/8/2.
//  Copyright © 2016年 hc_hzc. All rights reserved.
//

#import "MyViewController.h"
#import "NewsRollView.h"
#import "Masonry.h"
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
    
    
    
    //=========================图片Or文字===============================================================
    NSArray *arr = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"];
    _nrView = [[NewsRollView alloc]initWithFrame:CGRectMake(20, 100, SCREEN_WIDTH - 40, 200 ) intervalTime:1.0 animationType: kCATransitionPush itemsArray:arr sleepTime:3];
    
    
    
    
    //文字
    //    NSArray *arr = @[@"1111111111111111",@"22222222222222",@"333333333333",@"44444444444444"];
    //    _nrView = [[NewsRollView alloc]initWithFrame:CGRectMake(20, 100, SCREEN_WIDTH - 40, 30 ) intervalTime:1.0 animationType: kCATransitionPush itemsArray:arr sleepTime:3];
    //=========================图片Or文字===============================================================
    
    _nrView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_nrView];
    
    
    UIView *view1 = [[UIView alloc]init];
    UIView *view2 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    view2.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.height.equalTo(self.nrView);
        make.bottom.equalTo(self.nrView.mas_top);
    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.height.equalTo(self.nrView);
        make.top.equalTo(self.nrView.mas_bottom);
    }];
    
}


@end
