//
//  MSLoadingView.m
//  AnimationQIY-OC
//
//  Created by admin on 2017/3/16.
//  Copyright © 2017年 zhanming. All rights reserved.
//

#import "MSLoadingView.h"
#import "UIView+Frame.h"


@implementation MSLoadingView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
       // self.backgroundColor = [UIColor grayColor];
        [self setUI];
    }
    
    return self;
}

-(void)setUI{
    
    self.type = LoadingIconTypeCenter;
    self.loadingTitle = @"正在加载...";
    UIFont *font = [UIFont systemFontOfSize:12];
    CGFloat height = [self.loadingTitle boundingRectWithSize:CGSizeMake(self.bounds.size.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil].size.height;
     CGFloat widtha = [self.loadingTitle sizeWithAttributes:@{NSFontAttributeName:font}].width;
    
    UILabel *titleLb = [[UILabel alloc] initWithFrame:CGRectMake(0, self.frame.size.height - height-5,self.frame.size.width, height)];
    titleLb.centerX = self.frame.size.width/2;
    titleLb.text = self.loadingTitle;
    titleLb.textAlignment = NSTextAlignmentCenter;
    [self addSubview:titleLb];
    
    AnimationView *animationView = nil;
    switch (self.type) {
        case LoadingIconTypeCenter:{
        animationView = [[AnimationView alloc] initWithFrame:CGRectMake(0,CGRectGetMinY(titleLb.frame)-35,30,30)];
            animationView.centerX = self.frame.size.width/2;
            break;
        }
        case LoadingIconTypeLeft:{
            
            titleLb.centerY = self.frame.size.height/2;
        animationView = [[AnimationView alloc] initWithFrame:CGRectMake((self.frame.size.width - widtha)/2-50,CGRectGetHeight(titleLb.frame),30,30)];
            animationView.centerY = titleLb.centerY;
            break;
        }
            
        default:
            break;
    }
    self.loadingIcon = animationView;
    [self addSubview:animationView];
    
}




@end
