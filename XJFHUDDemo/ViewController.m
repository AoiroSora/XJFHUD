//
//  ViewController.m
//  XJFHUDDemo
//
//  Created by apple on 17/2/13.
//  Copyright © 2017年 xjf. All rights reserved.
//

#import "ViewController.h"
#import "XJFHUD.h"

@interface ViewController () {
    XJFHUD *hud;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}



- (IBAction)begin:(id)sender {
    hud = [XJFHUD new];
    [hud showInView:self.view];
    
    [NSTimer scheduledTimerWithTimeInterval:10 repeats:NO block:^(NSTimer * _Nonnull timer) {
        [hud dissMiss];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
