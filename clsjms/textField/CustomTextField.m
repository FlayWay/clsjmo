//
//  CustomTextField.m
//  clsjms
//
//  Created by ljkj on 2018/9/19.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (void)validateTextFiled:(CustomTextField *)textField {
    
    BOOL result = [self.validate lj_TextFieldDidEndEditing:textField];
    if (result) {
         NSLog(@"------%@",self.validate.attributeInputStr);
    }else {
         NSLog(@"------%@",self.validate.attributeInputStr);
    }
}

@end
