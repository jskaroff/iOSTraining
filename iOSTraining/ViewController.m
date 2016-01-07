//
//  ViewController.m
//  iOSTraining
//
//  Created by Joshua Skaroff on 11/19/15.
//  Copyright © 2015 Joshua Skaroff. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label = [[UILabel alloc] initWithFrame:(CGRectMake(self.view.center.x, self.view.center.y, 50.0, 10.0))];
    self.label.text = @"Hello World";
    self.label.backgroundColor = [UIColor lightGrayColor];
    self.label.numberOfLines = 0; // 0 = take up as many lines as you have text for
    self.label.lineBreakMode = NSLineBreakByWordWrapping;
    
    // self.label.numberOfLines = 1;
    // self.label.lineBreakMode = NSLineBreakByTruncatingTail;
    
    [self.label sizeToFit];
    self.label.center = self.view.center;
    [self.view addSubview:self.label];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"Blue" forState:(UIControlStateNormal)];
    [btn1 addTarget:self action:@selector(btnTouched:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 sizeToFit];
    btn1.center = CGPointMake(self.label.center.x, self.label.center.y + 25.0);
    btn1.layer.borderWidth = 2.0;
    btn1.layer.borderColor = [UIColor blueColor].CGColor;
    [self.view addSubview:btn1];
    
    CGRect frame = btn1.frame;
    frame.size.width = frame.size.width + 20.0;
    frame.size.height += 20.0;
    btn1.frame = frame;
    
    UIButton *btnSwift = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnSwift setTitle:@"Start Swift" forState:(UIControlStateNormal)];
    [btnSwift addTarget:self action:@selector(btnSwiftTouched:) forControlEvents:UIControlEventTouchUpInside];
    [btnSwift sizeToFit];
    btnSwift.center = CGPointMake(CGRectGetMaxX(btn1.frame), btn1.center.y + 50.0);
    btnSwift.layer.borderWidth = 2.0;
    btnSwift.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:btnSwift];
    
    CGRect frame2 = btnSwift.frame;
    frame2.size.width += 20.0;
    frame2.size.height += 20.0;
    btnSwift.frame = frame2;
}

- (void) btnTouched:(id) sender {
    UIButton *btn = (UIButton *)sender;
    NSString *btnLabel = btn.titleLabel.text;
    
    NSLog(btnLabel);
    
    self.label.text = btnLabel;
    [self.label sizeToFit];
    
    CGRect frame = self.label.frame;
    frame.size.width = 320.0;
    self.label.frame = frame;
}

- (void) btnSwiftTouched:(id) sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


