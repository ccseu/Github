//
//  ViewController.m
//  HelloWorld
//
//  Created by yf on 7/11/15.
//  Copyright (c) 2015 yf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate,UITextViewDelegate>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//通过委托放弃第一响应者   点return键
#pragma mark -UITextField Delegate Method
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{[textField resignFirstResponder];
    return YES;

}
#pragma mark -UITextView Delegate Method
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if([text isEqualToString:@"\n"]){
        [textView resignFirstResponder];
    return NO;
    }
return YES;
}
//点击输入框及键盘之外区域

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    
    if (![touch.view isKindOfClass: [UITextField class]] || ![touch.view isKindOfClass: [UITextView class]]) {
        
        [self.view endEditing:YES];
        
    }
    
}



@end
