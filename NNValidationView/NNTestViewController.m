//
//  NNTestViewController.m
//  NNValidationView
//
//  Created by 柳钟宁 on 2017/7/31.
//  Copyright © 2017年 zhongNing. All rights reserved.
//

#import "NNTestViewController.h"
#import "NNValidationView.h"

@interface NNTestViewController ()

@property (nonatomic, strong) NNValidationView *testView;

@end

@implementation NNTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"测试";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupViews];
}

- (void)setupViews {
    _testView = [[NNValidationView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 100) / 2, 200, 100, 40) andCharCount:4 andLineCount:4];
    [self.view addSubview:_testView];
    
    __weak typeof(self) weakSelf = self;
    /// 返回验证码数字
    _testView.changeValidationCodeBlock = ^(void){
        NSLog(@"验证码被点击了：%@", weakSelf.testView.charString);
    };
    NSLog(@"第一次打印：%@", self.testView.charString);
}

@end
