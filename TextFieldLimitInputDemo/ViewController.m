//
//  ViewController.m
//  TextFieldLimitInputDemo
//
//  Created by 薛晶锦 on 16/5/18.
//  Copyright © 2016年 薛晶锦. All rights reserved.
//

#import "ViewController.h"
#import "XLimitPointTextFieldLogic.h"
@interface ViewController ()<UITextFieldDelegate>

@property(nonatomic,strong)XLimitPointTextFieldLogic * textFieldLimitLogic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createView];
}

#pragma mark UI
-(void)createView
{
    UITextField * textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 50)];
    textField.backgroundColor = [UIColor yellowColor];
    textField.placeholder = @"请输入";
    textField.keyboardType = UIKeyboardTypeDecimalPad;
    textField.clearButtonMode = UITextFieldViewModeAlways;
    [textField becomeFirstResponder];
    textField.delegate = self;
    [self.view addSubview:textField];
}

-(XLimitPointTextFieldLogic *)textFieldLimitLogic
{
    if(!_textFieldLimitLogic)
    {
        _textFieldLimitLogic = [[XLimitPointTextFieldLogic alloc] init];
        //对输入位数进行限制
        _textFieldLimitLogic.totalLength = 5;
        _textFieldLimitLogic.pointLength = 3;
    }
    return _textFieldLimitLogic;
}

//限制输入的位数;
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    BOOL isLimit = [self.textFieldLimitLogic judgeForString:textField.text AndSingleStr:string AndRange:range AndTextField:textField];
    
    if(isLimit)
    {
        return YES;
    }else
    {
        return NO;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
