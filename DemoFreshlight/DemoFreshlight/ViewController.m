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
    [SYFlashLight showFlashlight];
}

@end
