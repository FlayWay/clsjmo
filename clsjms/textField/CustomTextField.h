//
//  CustomTextField.h
//  clsjms
//
//  Created by ljkj on 2018/9/19.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputTextFieldValidate.h"

@interface CustomTextField : UITextField

@property (nonatomic, strong) InputTextFieldValidate *validate;

- (void)validateTextFiled:(UITextField *)textField;

@end
