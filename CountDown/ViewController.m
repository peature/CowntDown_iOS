//
//  ViewController.m
//  CountDown
//
//  Created by 北詰 隆滋 on 2015/04/02.
//  Copyright (c) 2015年 北詰 隆滋. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize start_button;

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)update
{
    if (time <= 0.0) {
        [_countdown_timer invalidate];
        start_button.hidden = NO;
    }
    else {
        time--;
        // countLabelの値を更新
        [_countLabel setText:[NSString stringWithFormat: @"%d", time]];
        
    }
}

-(IBAction)bottonPushed{
    _countdown_timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                        target:self
                                                      selector:@selector(update)
                                                      userInfo:nil
                                                       repeats:YES];
    time = 10;
    [_countdown_timer fire];
    start_button.hidden=YES;
};


@end
