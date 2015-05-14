//
//  WSYActivityButton.h
//  WSY_ActivityButton
//
//  Created by YSC on 15/5/14.
//  Copyright (c) 2015年 __. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WSYActivityButton : UIButton

- (instancetype)initWithFrame:(CGRect)frame activityViewStyle: (UIActivityIndicatorViewStyle)style;
- (void)startAnimation;
- (void)stopAnimation;

@end
