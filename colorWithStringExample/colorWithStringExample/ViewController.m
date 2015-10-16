//
//  ViewController.m
//  colorWithStringExample
//
//  Created by YFL on 15/10/16.
//  Copyright © 2015年 text. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+FromSting.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //#import "UIColor+FromSting.h"
    self.view.backgroundColor = [UIColor colorWithString:@"255.255.255"];
    self.view.backgroundColor = [UIColor colorWithString:@"0xFFFFFFFF"];
    self.view.backgroundColor = [UIColor colorWithString:@"FFFFFFFF"];
    self.view.backgroundColor = [UIColor colorWithString:@"#FFFFFF"];

    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
