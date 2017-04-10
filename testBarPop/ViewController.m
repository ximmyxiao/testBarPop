//
//  ViewController.m
//  testBarPop
//
//  Created by Piao Piao on 2017/4/10.
//  Copyright © 2017年 Piao Piao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"red viewWillAppear");
    
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar.layer removeAllAnimations];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"red viewWillDisappear");
    
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
