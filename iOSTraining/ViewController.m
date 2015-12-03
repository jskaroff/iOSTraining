//
//  ViewController.m
//  iOSTraining
//
//  Created by Joshua Skaroff on 11/19/15.
//  Copyright © 2015 Joshua Skaroff. All rights reserved.
//

#import "ViewController.h"
#import "iPhone.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Computer *c1 = [[Computer alloc] init];
    c1.make = @"Commodore";
    c1.model = @"64";
    
    iPhone *i1 = [[iPhone alloc] init];
    i1.make = @"Apple";
    i1.model = @"iPhone 6s+";
    i1.megabytesOfStorage = 128 * 1024;
    
    iPhone *i2 = [[iPhone alloc] init];
    [i2 setupComputerValues];
    i1.make = @"Apple";
    i1.model = @"iPhone 4";
    i1.megabytesOfStorage = 16 * 1024;
    
    NSLog(@"i1 Values = %@ - %@ - %@", i1, i1.make, i1.model);
    NSLog(@"i2 Values = %@ - %@ - %@", i2, i2.make, i2.model);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
