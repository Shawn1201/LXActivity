//
//  MainViewController.m
//  LXActivityDemo
//
//  Created by lixiang on 14-3-17.
//  Copyright (c) 2014年 lcolco. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () {
    LXActivity *lxActivity;
}

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"LXActivityDemo";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tapIndex = 0;
    self.showActivityButton.layer.masksToBounds = YES;
    self.showActivityButton.layer.cornerRadius = 5;
    
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)didClickOnShowLXActivityButton:(id)sender
{

    NSArray *shareButtonTitleArray = [[NSArray alloc] init];
    NSArray *shareButtonImageNameArray = [[NSArray alloc] init];
    
    if (self.tapIndex == 0) {
        shareButtonTitleArray = @[@"短信",@"邮件",@"新浪微博",@"微信",@"微信朋友圈",@"Twitter"];
        shareButtonImageNameArray = @[@"sns_icon_19",@"sns_icon_18",@"sns_icon_1",@"sns_icon_22",@"sns_icon_23",@"sns_icon_11"];
        self.tapIndex++;
    }
    else if (self.tapIndex == 1){
        shareButtonTitleArray = @[@"短信",@"邮件",@"新浪微博",@"微信",@"微信朋友圈"];
        shareButtonImageNameArray = @[@"sns_icon_19",@"sns_icon_18",@"sns_icon_1",@"sns_icon_22",@"sns_icon_23"];
        self.tapIndex++;
    }
    else if (self.tapIndex == 2){
        shareButtonTitleArray = @[@"短信",@"邮件",@"新浪微博",@"微信"];
        shareButtonImageNameArray = @[@"sns_icon_19",@"sns_icon_18",@"sns_icon_1",@"sns_icon_22"];
        self.tapIndex++;
    }
    else if (self.tapIndex == 3){
        shareButtonTitleArray = @[@"短信",@"邮件",@"新浪微博"];
        shareButtonImageNameArray = @[@"sns_icon_19",@"sns_icon_18",@"sns_icon_1"];
        self.tapIndex++;
    }
    else if (self.tapIndex == 4){
        shareButtonTitleArray = @[@"短信",@"邮件"];
        shareButtonImageNameArray = @[@"sns_icon_19",@"sns_icon_18"];
        self.tapIndex++;
    }
    else if (self.tapIndex == 5){
        shareButtonTitleArray = @[@"短信"];
        shareButtonImageNameArray = @[@"sns_icon_19"];
        self.tapIndex = 0;
    }
    
    if (!lxActivity) {
        lxActivity = [[LXActivity alloc] initWithTitle:@"分享到社交平台" delegate:self cancelButtonTitle:@"取消" ShareButtonTitles:shareButtonTitleArray withShareButtonImagesName:shareButtonImageNameArray];
    }
    [lxActivity show];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - LXActivityDelegate

- (void)didClickOnImageIndex:(NSInteger *)imageIndex
{
    NSLog(@"%d",(int)imageIndex);
}

- (void)didClickOnCancelButton
{
    NSLog(@"didClickOnCancelButton");
}

@end
