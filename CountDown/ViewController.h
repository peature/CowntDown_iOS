//
//  ViewController.h
//  CountDown
//
//  Created by 北詰 隆滋 on 2015/04/02.
//  Copyright (c) 2015年 北詰 隆滋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) int countdown_time;
@property (weak, nonatomic) IBOutlet UILabel *TimeLabel;
@property (weak, nonatomic) NSTimer *tm;

@end
