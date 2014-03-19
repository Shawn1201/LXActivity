//
//  MainViewController.h
//  LXActivityDemo
//
//  Created by lixiang on 14-3-17.
//  Copyright (c) 2014年 lcolco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LXActivity.h"

@interface MainViewController : UIViewController<LXActivityDelegate>

@property (weak, nonatomic) IBOutlet UIButton *showActivityButton;

@property (assign, nonatomic) int tapIndex;

@end
