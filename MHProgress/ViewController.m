//
//  ViewController.m
//  MHProgress
//
//  Created by Macro on 10/12/15.
//  Copyright © 2015 Macro. All rights reserved.
//

#import "ViewController.h"
#import "MHProgress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor blackColor];
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(100, 100, 90, 30);
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"Tips" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(action:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn1.frame = CGRectMake(100, 200, 90, 30);
    btn1.backgroundColor = [UIColor blueColor];
    [btn1 setTitle:@"Full" forState:(UIControlStateNormal)];
    [btn1 setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn1 addTarget:self action:@selector(action1:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn1];
    
    
    UIButton *btn2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn2.frame = CGRectMake(100, 300, 90, 30);
    btn2.backgroundColor = [UIColor blueColor];
    [btn2 setTitle:@"Wrap" forState:(UIControlStateNormal)];
    [btn2 setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn2 addTarget:self action:@selector(action2:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn2];

    
}

- (void)action:(UIButton *)btn {
    MHProgress *p = [[MHProgress alloc] initWithType:MHPopViewTypeTips];
    [p showTips:@"提交成功" intInterval:1];
    //[p closeLoadingView]; // 关闭
}
- (void)action1:(UIButton *)btn1 {
    MHProgress *p = [[MHProgress alloc]
                     initWithType:MHPopViewTypeFullScreenWithTips
                      failedBlock:^(){
        NSLog(@"失败回调");
    }];
    [p showLoadingView];
    //[p closeLoadingView]; // 关闭
}
- (void)action2:(UIButton *)btn1 {
    NSLog(@"show");
    MHProgress *p = [[MHProgress alloc] initWithType:MHPopViewTypeWrapContentWithTips failedBlock:^(){
        NSLog(@"加载失败");
    }];
    [p showLoadingView];
    [p closeLoadingView]; // 关闭
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
