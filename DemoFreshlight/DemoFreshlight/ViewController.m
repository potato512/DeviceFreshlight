//
//  ViewController.m
//  DemoFreshlight
//
//  Created by zhangshaoyu on 14-6-23.
//  Copyright (c) 2014年 zhangshaoyu. All rights reserved.
//

#import "ViewController.h"
#import "SYFlashLight.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"闪光灯";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(freshlightButtonClick:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)freshlightButtonClick:(UIBarButtonItem *)button
{
    [[SYFlashLight shareFlash] openFlashLight:^(BOOL hasFlash, BOOL isOpen) {
        if (hasFlash) {
            if (isOpen) {
                [[[UIAlertView alloc] initWithTitle:@"温馨提示" message:@"已经打开闪光灯" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"知道了", nil] show];
            } else {
                [[[UIAlertView alloc] initWithTitle:@"温馨提示" message:@"已经关闭闪光灯" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"知道了", nil] show];
            }
        } else {
            [[[UIAlertView alloc] initWithTitle:@"温馨提示" message:@"没有闪光灯功能" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"知道了", nil] show];
        }
    }];
}

@end
