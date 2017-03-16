//
//  MSLoadingView.h
//  AnimationQIY-OC
//
//  Created by admin on 2017/3/16.
//  Copyright © 2017年 zhanming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimationView.h"

typedef NS_ENUM(NSUInteger, LoadingIconType) {
    LoadingIconTypeCenter,//加载动画在中间,默认在中间
    LoadingIconTypeLeft,//加载动画在左边
};

@interface MSLoadingView : UIView

@property (nonatomic,strong) AnimationView *loadingIcon;
//加载文字
@property (nonatomic,strong) NSString *loadingTitle;

@property (nonatomic,assign) LoadingIconType type;


@end
