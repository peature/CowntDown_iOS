//
//  ViewController.h
//  CountDown
//
//  Created by 北詰 隆滋 on 2015/04/02.
//  Copyright (c) 2015年 北詰 隆滋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int time;
}

@property (nonatomic, strong) NSTimer *countdown_timer;
@property (weak, nonatomic) IBOutlet UIButton *start_button;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end
