# 解决问题

#### 1.图片上下跑马灯效果
#### 2.UILabel上下跑马灯效果
#### 动画效果：kCATransitionFade 交叉淡化过渡、kCATransitionMoveIn 新视图移到旧视图上面、kCATransitionPush 新视图把旧视图推出去、kCATransitionReveal 将旧视图移开,显示下面的新视图、@"pageCurl" 向上翻一页、@"pageUnCurl" 向下翻一页、@"rippleEffect" 滴水效果、@"suckEffect" 收缩效果，如一块布被抽走、@"cube" 立方体效果、@"oglFlip" 上下翻转效果、@"cameraIrisHollowOpen" 007镜头外展效果、@"cameraIrisHollowClose"007镜头内收效果

### 主要代码如下：
#### NSArray *arr = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"];
#### _nrView = [[NewsRollView alloc]initWithFrame:CGRectMake(20, 100, SCREEN_WIDTH - 40, 200 ) intervalTime:1.0 animationType: kCATransitionPush itemsArray:arr sleepTime:3];

####NSArray *arr = @[@"1111111111111111",@"22222222222222",@"333333333333",@"44444444444444"];
#### _nrView = [[NewsRollView alloc]initWithFrame:CGRectMake(20, 100, SCREEN_WIDTH - 40, 30 ) intervalTime:1.0 animationType: kCATransitionPush itemsArray:arr sleepTime:3];


![image](https://github.com/biyu6/imagePaoMaDeng/blob/master/yanshi01.gif)
![image](https://github.com/biyu6/imagePaoMaDeng/blob/master/yanshi02.gif)
