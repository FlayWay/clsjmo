
//
//  LatterValidate.m
//  clsjms
//
//  Created by ljkj on 2018/9/19.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "LatterValidate.h"

@implementation LatterValidate

- (BOOL)lj_TextFieldDidEndEditing:(UITextField *)textField {
    
    if (textField.text.length == 0) {
        
        self.attributeInputStr = @"数值不能为空";
        return NO;
    }
    
    NSString *pattern = @"^[0-9]*$";
    NSRegularExpression *regx = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger numberOfMatches = [regx numberOfMatchesInString:textField.text options:NSMatchingAnchored range:NSMakeRange(0, textField.text.length)];
    
    if (numberOfMatches == 0) {
        self.attributeInputStr = @"不全为数字,输入有误,请重新输入";
    }else {
        self.attributeInputStr = @"输入正确,全部是数字";
    }
    return YES;
    
}

@end
