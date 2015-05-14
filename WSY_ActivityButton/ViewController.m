//
//  ViewController.m
//  WSY_ActivityButton
//
//  Created by YSC on 15/5/14.
//  Copyright (c) 2015年 __. All rights reserved.
//

#import "ViewController.h"
#import "WSYActivityButton.h"

@interface ViewController ()

@end

@implementation ViewController
{
    BOOL _activity;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tap:(WSYActivityButton *)sender {
    if (!_activity) {
        [sender startAnimation];
    }else {
        [sender stopAnimation];
    }
    _activity = !_activity;
}

@end
