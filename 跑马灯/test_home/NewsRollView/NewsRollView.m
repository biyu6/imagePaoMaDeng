//
//  NewsRollView.m
//  HC_PromoteBusiness
//
//  Created by hc_hzc on 16/7/29.
//  Copyright © 2016年 ztp. All rights reserved.
//

#import "NewsRollView.h"
#import "Masonry.h"
#define RGBAUIColorFrom(rgbValue, alphaValue) \
[UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0x0000FF))/255.0 \
alpha:alphaValue]
@interface NewsRollView(){
    CGFloat _intervalTime;
    NSArray *_itemsArray;
}

@end

@implementation NewsRollView
static int countInt=0;

- (instancetype)initWithFrame:(CGRect)frame intervalTime:(NSInteger)intervalTime itemsArray:(NSArray *)itemsArray sleepTime:(NSTimeInterval)sleepTime{
    if (self = [super initWithFrame:frame]) {
        _intervalTime = intervalTime;
        _itemsArray = itemsArray;
        self.notice = [[UIImageView alloc] init];
        self.notice.image = [UIImage imageNamed:itemsArray[0]];
        
        //文字的
//        self.notice.font = [UIFont systemFontOfSize:fsize];//滚动文字的字号
//        self.notice.text = itemsArray[0];//默认第一条显示的内容
//        self.notice.textColor = [UIColor blackColor];//文字的颜色
        self.backgroundColor = [UIColor redColor];
        [self addSubview:self.notice];
        
        //间隔的时间
        [NSTimer scheduledTimerWithTimeInterval:sleepTime target:self selector:@selector(displayNews) userInfo:nil repeats:YES];
        [self setlayoutSubviews];
    }
    return self;
}

- (void)setlayoutSubviews{
    [self.notice mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self);
        make.centerY.equalTo(self.mas_centerY);
        make.height.offset(180);
    }];
}
-(void)displayNews{
    countInt++;
    
    if (countInt >= [_itemsArray count])
        countInt=0;
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = _intervalTime ;//动画执行的时间
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = YES;
    animation.type = @"cube";
    
    [self.notice.layer addAnimation:animation forKey:@"animationID"];
//    self.notice.text = _itemsArray[countInt];
     self.notice.image = [UIImage imageNamed:_itemsArray[countInt]];
}

@end
