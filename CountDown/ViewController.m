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


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _countdown_time = 60;
    [_TimeLabel setText:[NSString stringWithFormat:@"%.0d", _countdown_time]];
    
    _tm = [NSTimer scheduledTimerWithTimeInterval:1
                                         target:self
                                         selector:@selector(update_char)
                                         userInfo:nil
                                         repeats:YES];
    [_tm fire];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) update_char{
    
    if (_countdown_time <= 0.0) {
        [_tm invalidate];
    }
    [_TimeLabel setText:[NSString stringWithFormat:@"%.0d", _countdown_time]];
    _countdown_time -=1;
    
}

@end
