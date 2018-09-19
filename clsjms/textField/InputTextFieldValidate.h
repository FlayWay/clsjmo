//
//  InputTextFieldValidate.h
//  clsjms
//
//  Created by ljkj on 2018/9/19.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputTextFieldValidate : NSObject

@property (nonatomic, copy) NSString *attributeInputStr;

- (BOOL)lj_TextFieldDidEndEditing:(UITextField *)textField;

@end
