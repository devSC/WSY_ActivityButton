//
//  WSYActivityButton.m
//  WSY_ActivityButton
//
//  Created by YSC on 15/5/14.
//  Copyright (c) 2015年 __. All rights reserved.
//

#import "WSYActivityButton.h"
@interface WSYActivityButton()

@property (strong, nonatomic) UIActivityIndicatorView *activityView;
@property (assign, nonatomic) UIActivityIndicatorViewStyle activityViewStyle;
@end

@implementation WSYActivityButton

- (instancetype)initWithFrame:(CGRect)frame activityViewStyle:(UIActivityIndicatorViewStyle)style
{
    self = [super initWithFrame:frame];
    if (self) {
        self.activityViewStyle = style;
        [self setUp];
    }
    return self;
}

- (void)awakeFromNib
{
    [self setUp];
    [self addSubview:self.activityView];
    NSDictionary *bind = NSDictionaryOfVariableBindings(self, _activityView);
    NSArray *arrayV = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_activityView]-|" options:0 metrics:nil views:bind];
    NSArray *arrayH = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[_activityView]" options:0 metrics:nil views:bind];
    
    [self addConstraints:arrayV];
    [self addConstraints:arrayH];

    
}
- (void)setUp
{
    _activityViewStyle = UIActivityIndicatorViewStyleGray;
}
- (void)startAnimation
{
    self se
    [self.activityView startAnimating];
}

- (void)stopAnimation
{
    [self.activityView stopAnimating];
}

- (UIActivityIndicatorView *)activityView
{
    if (!_activityView) {
        _activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:_activityViewStyle];
        _activityView.center = self.center;
        _activityView.translatesAutoresizingMaskIntoConstraints = NO;
        

        
    }
    return _activityView;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
