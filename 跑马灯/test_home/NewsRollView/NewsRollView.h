//
//  NewsRollView.h
//  HC_PromoteBusiness
//
//  Created by hc_hzc on 16/7/29.
//  Copyright © 2016年 ztp. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface NewsRollView : UIView
/**图片*/
@property (nonatomic ,strong) UIImageView *notice;
/**文字*/
//@property (nonatomic, strong)UILabel *notice;

/**
 *intervalTime  动画执行时间
 *anType  动画属性（kCATransitionFade 交叉淡化过渡、kCATransitionMoveIn 新视图移到旧视图上面、kCATransitionPush 新视图把旧视图推出去、kCATransitionReveal 将旧视图移开,显示下面的新视图、@"pageCurl" 向上翻一页、@"pageUnCurl" 向下翻一页、@"rippleEffect" 滴水效果、@"suckEffect" 收缩效果，如一块布被抽走、@"cube" 立方体效果、@"oglFlip" 上下翻转效果、@"cameraIrisHollowOpen" 007镜头外展效果、@"cameraIrisHollowClose"007镜头内收效果）
 *itemsArray  数据数组
 *sleepTime   每一条数据停留的时间
 */
- (instancetype)initWithFrame:(CGRect)frame intervalTime:(NSInteger)intervalTime animationType:(NSString *)anType  itemsArray:(NSArray *)itemsArray sleepTime:(NSTimeInterval)sleepTime;



@end
