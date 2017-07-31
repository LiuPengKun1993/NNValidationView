# NNValidationView
### 随机图片验证码封装。

- 在 iOS 开发中，为了防止短信验证码的恶意获取，注册时需要图片验证。

#### 用法
```
    _testView = [[NNValidationView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 100) / 2, 200, 100, 40) andCharCount:4 andLineCount:4];
    [self.view addSubview:_testView];
```

**以上两行代码便可以实现图片验证码，其中 charCount 和 lineCount 分别指显示的字符串数量以及干扰线的数量。
另外我们还需要知道图片验证码上的字符串，可以用下边这个 block 获取：**

```
  __weak typeof(self) weakSelf = self;
    /// 返回验证码数字
    _testView.changeValidationCodeBlock = ^(void){
        NSLog(@"验证码被点击了：%@", weakSelf.testView.charString);
    };
```

#### 效果图

![效果图](https://github.com/liuzhongning/NNValidationView/blob/master/sampleImage/111.gif)

![打印结果](https://github.com/liuzhongning/NNValidationView/blob/master/sampleImage/Snip20170731_14.png)
