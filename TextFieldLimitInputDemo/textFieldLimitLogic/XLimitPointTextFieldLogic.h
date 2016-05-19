//
//  XLimitPointTextFieldLogic.h
//  JiudouyuApp
//
//  Created by 薛晶锦 on 16/5/18.
//  Copyright © 2016年 张一力. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**
 TextField输入框小数点限制输入
 */
@interface XLimitPointTextFieldLogic : NSObject

//输入位数长度限制
@property(nonatomic)NSInteger totalLength;
//小数点保留位数
@property(nonatomic)NSInteger pointLength;

-(BOOL)judgeForString:(NSString *)textStr AndSingleStr:(NSString *)string AndRange:(NSRange)range AndTextField:(UITextField *)textField;


@end
