//
//  ViewController.m
//  clsjms
//
//  Created by ljkj on 2018/9/19.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
#import "CustomTextField.h"
#import "NumberValidate.h"
#import "LatterValidate.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet CustomTextField *numberTF;
@property (weak, nonatomic) IBOutlet CustomTextField *latterTF;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonItemStylePlain target:self action:@selector(next)];
    
    self.numberTF.validate = [NumberValidate new];
    self.latterTF.validate = [LatterValidate new];
    
}
- (IBAction)checkAction:(UIButton *)sender {
    
    [self.view endEditing:YES];
}

- (void)textFieldDidEndEditing:(CustomTextField *)textField {
    
    [textField validateTextFiled:textField];
    
}

- (void)next {
    
    [self.navigationController pushViewController:[MyViewController new] animated:YES];
}


@end
