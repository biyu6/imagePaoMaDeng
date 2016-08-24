//
//  NewsRollView.h
//  HC_PromoteBusiness
//
//  Created by hc_hzc on 16/7/29.
//  Copyright © 2016年 ztp. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface NewsRollView : UIView

@property (nonatomic ,strong) UIImageView *notice;

/**
 *intervalTime  动画执行时间
 *itemsArray  数据数组
 *sleepTime   每一条数据停留的时间
 */
- (instancetype)initWithFrame:(CGRect)frame intervalTime:(NSInteger)intervalTime itemsArray:(NSArray *)itemsArray sleepTime:(NSTimeInterval)sleepTime;



@end
