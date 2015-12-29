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
    self.label.numberOfLines = 0;
    self.label.lineBreakMode = NSLineBreakByWordWrapping;
    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


