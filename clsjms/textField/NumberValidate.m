//
//  NumberValidate.m
//  clsjms
//
//  Created by ljkj on 2018/9/19.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "NumberValidate.h"

@implementation NumberValidate

- (BOOL)lj_TextFieldDidEndEditing:(UITextField *)textField{
    
    if (textField.text.length == 0) {
        self.attributeInputStr = @"字母不能为空";
//        return self.attributeInputStr;
        return NO;
    }
    NSString *pattern = @"^[a-zA-Z]*$";
    NSRegularExpression *regx = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionAnchorsMatchLines error:nil];
    NSUInteger numberOfMaches = [regx numberOfMatchesInString:textField.text options:NSMatchingAnchored range:NSMakeRange(0, textField.text.length)];
    if (numberOfMaches == 0) {
        self.attributeInputStr = @"不全为字母,输入有误,请重新输入";
    }else {
        self.attributeInputStr = @"输入正确,全部是字母";
    }
    return YES;
}

@end
