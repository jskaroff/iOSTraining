//
//  ViewController.m
//  iOSTraining
//
//  Created by Joshua Skaroff on 11/19/15.
//  Copyright © 2015 Joshua Skaroff. All rights reserved.
//

#import "ViewController.h"

// private category
@interface ViewController ()

@property (nonatomic, strong) UILabel *lbl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 50, 200, 50)];
    self.lbl.text = @"This is my text. Some more text goes here.";
    self.lbl.backgroundColor = [UIColor lightGrayColor];
    [self.lbl sizeToFit];
    [self.view addSubview:self.lbl];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"Text 1" forState:UIControlStateNormal];
    // addTarget:self means that system will look for selector in this class
    [btn1 addTarget:self action:@selector(btnTouched:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 sizeToFit];
    btn1.center = self.view.center;
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTitle:@"Button 2" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(btnTouched:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 sizeToFit];
    btn2.center = CGPointMake(btn1.center.x, CGRectGetMaxY(btn1.frame) + 20.0);
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3 setTitle:@"Button 3" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(btnTouched:) forControlEvents:UIControlEventTouchUpInside];
    [btn3 sizeToFit];
    btn3.center = CGPointMake(btn2.center.x, CGRectGetMaxY(btn2.frame) + 20.0);
    [self.view addSubview:btn3];
    
}

// selector has default param of sending object
// id is generic type
- (void)btnTouched:(id) sender {
    NSLog(@"sender = %@", sender);
    UIButton *btn = (UIButton *)sender;
    NSString *btnTitle = btn.titleLabel.text;
    
    self.lbl.text = btnTitle;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
