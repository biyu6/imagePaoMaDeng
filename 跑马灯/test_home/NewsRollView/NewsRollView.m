//
//  NewsRollView.m
//  HC_PromoteBusiness
//
//  Created by hc_hzc on 16/7/29.
//  Copyright © 2016年 ztp. All rights reserved.
//
#define RGBAUIColorFrom(rgbValue, alphaValue) \
[UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0x0000FF))/255.0 \
alpha:alphaValue]



#import "NewsRollView.h"
#import "Masonry.h"

@interface NewsRollView()<CAAnimationDelegate>{
    CGFloat _intervalTime;
    NSArray *_itemsArray;
    NSString *_animationType;
}
@end
@implementation NewsRollView
static int countInt=0;

- (instancetype)initWithFrame:(CGRect)frame intervalTime:(NSInteger)intervalTime animationType:(NSString *)anType  itemsArray:(NSArray *)itemsArray sleepTime:(NSTimeInterval)sleepTime{
    if (self = [super initWithFrame:frame]) {
        _intervalTime = intervalTime;
        _itemsArray = itemsArray;
        _animationType = anType;
        //=========================图片Or文字===============================================================
        if (itemsArray.count > 0) {
            //图片的
            self.notice = [[UIImageView alloc] init];
            self.notice.image = [UIImage imageNamed:itemsArray[0]];
            
            //文字的
            //            self.notice = [[UILabel alloc]init];
            //            self.notice.font = [UIFont systemFontOfSize:15];//滚动文字的字号
            //            self.notice.text = itemsArray[0];//默认第一条显示的内容
            //            self.notice.textColor = [UIColor blackColor];//文字的颜色
            
            //=========================图片Or文字===============================================================
            [self addSubview:self.notice];
            //间隔的时间
            [NSTimer scheduledTimerWithTimeInterval:sleepTime target:self selector:@selector(displayNews) userInfo:nil repeats:YES];
            [self.notice mas_makeConstraints:^(MASConstraintMaker *make) {
                make.edges.equalTo(self);
            }];
            
        }
    }
    return self;
}
-(void)displayNews{
    countInt++;
    
    if (countInt >= [_itemsArray count])
        countInt=0;
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = _intervalTime ;//动画执行的时间
    animation.timingFunction = UIViewAnimationCurveEaseInOut;//从开头到结尾以相同的速度来播放动画：
    animation.fillMode = kCAFillModeForwards;//决定当前对象过了非active时间段的行为. 比如动画开始之前,动画结束之后。如果是一个动画CAAnimation,则需要将其removedOnCompletion设置为NO,要不然fillMode不起作用.
    animation.removedOnCompletion = YES;
    animation.subtype = kCATransitionFromTop;//动画方向
    animation.type = _animationType;//动画属性
    
    [self.notice.layer addAnimation:animation forKey:@"animationID"];
    
    //=========================图片Or文字===============================================================
    if (_itemsArray.count > 0) {
        //图片的
        self.notice.image = [UIImage imageNamed:_itemsArray[countInt]];
        //文字的
        //        self.notice.text = _itemsArray[countInt];
    }
    //=========================图片Or文字===============================================================
    
}

@end
