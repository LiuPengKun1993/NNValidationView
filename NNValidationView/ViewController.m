//
//  ViewController.m
//  NNValidationView
//
//  Created by 柳钟宁 on 2017/7/31.
//  Copyright © 2017年 zhongNing. All rights reserved.
//

#import "ViewController.h"
#import "NNTestViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    [self setupViews];
}

- (void)setupViews {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((self.view.frame.size.width - 100) / 2, 200, 100, 40);
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)clickBtn {
    NNTestViewController *testVC = [[NNTestViewController alloc] init];
    [self.navigationController pushViewController:testVC animated:YES];
}

@end
