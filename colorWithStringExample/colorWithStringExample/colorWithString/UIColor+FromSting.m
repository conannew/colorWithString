//
//  UIColor+FromSting.m
//  窝+社区
//
//  Created by YFL on 15/9/23.
//  Copyright © 2015年 Kamyu. All rights reserved.
//

#import "UIColor+FromSting.h"

@implementation UIColor (FromSting)
+ (UIColor *)colorWithString:(NSString *)string
{
    if (!string || [string isEqualToString:@""]) {
        NSLog(@"颜色代码没有值 = %@",string);
        return nil;
    }
    
    
    if ([[string substringToIndex:5] isEqualToString:@"0xFF"]) {
        
        unsigned int red,green,blue;
        NSRange range;
        range.length = 2;
        
        range.location = 4;
        [[NSScanner scannerWithString:[string substringWithRange:range]]scanHexInt:&red];
        
        range.location = 6;
        [[NSScanner scannerWithString:[string substringWithRange:range]]scanHexInt:&green];
        
        range.location = 8;
        [[NSScanner scannerWithString:[string substringWithRange:range]]scanHexInt:&blue];
        
        return [UIColor colorWithRed:(float)(red/255.0f)green:(float)(green / 255.0f) blue:(float)(blue / 255.0f)alpha:1.0f];
        
        
        
    }
    
    
    if ([[string substringToIndex:5] isEqualToString:@"#"]) {
        
        unsigned int red,green,blue;
        NSRange range;
        range.length = 2;
        
        range.location = 1;
        [[NSScanner scannerWithString:[string substringWithRange:range]]scanHexInt:&red];
        
        range.location = 3;
        [[NSScanner scannerWithString:[string substringWithRange:range]]scanHexInt:&green];
        
        range.location = 5;
        [[NSScanner scannerWithString:[string substringWithRange:range]]scanHexInt:&blue];
        
        return [UIColor colorWithRed:(float)(red/255.0f)green:(float)(green / 255.0f) blue:(float)(blue / 255.0f)alpha:1.0f];
    }
    
    if ([[string substringToIndex:5] isEqualToString:@"FF"]) {
        unsigned int red,green,blue;
        NSRange range;
        range.length = 2;
        
        range.location = 2;
        [[NSScanner scannerWithString:[string substringWithRange:range]]scanHexInt:&red];
        
        range.location = 4;
        [[NSScanner scannerWithString:[string substringWithRange:range]]scanHexInt:&green];
        
        range.location = 6;
        [[NSScanner scannerWithString:[string substringWithRange:range]]scanHexInt:&blue];
        
        return [UIColor colorWithRed:(float)(red/255.0f)green:(float)(green / 255.0f) blue:(float)(blue / 255.0f)alpha:1.0f];
    }
    
    
    
    
    NSRange range1 = [string rangeOfString:@"."];
    
    NSString *red = [string substringToIndex:range1.location];
    
    NSString *red_ = [string substringFromIndex:range1.location+1];
    
    NSRange range2 = [red_ rangeOfString:@"."];
    
    NSString *gre = [red_ substringToIndex:range2.location];
    
    NSString *blu = [red_ substringFromIndex:range2.location+1];
    
    return [UIColor colorWithRed:(float)([red intValue]/255.0f) green:(float)([gre intValue]/255.0f) blue:(float)([blu intValue]/255.0f) alpha:1];
}




@end
