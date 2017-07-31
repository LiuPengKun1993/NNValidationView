//
//  NNValidationView.h
//  NNValidationView
//
//  Created by 柳钟宁 on 2017/7/31.
//  Copyright © 2017年 zhongNing. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^NNChangeValidationCodeBlock)();

@interface NNValidationView : UIView

@property (nonatomic, copy) NSArray *charArray;

@property (nonatomic, strong) NSMutableString *charString;

@property (nonatomic, copy) NNChangeValidationCodeBlock changeValidationCodeBlock;

- (instancetype)initWithFrame:(CGRect)frame andCharCount:(NSInteger)charCount andLineCount:(NSInteger)lineCount;

@end
