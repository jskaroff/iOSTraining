//
//  iPhone.m
//  iOSTraining
//
//  Created by Joshua Skaroff on 11/30/15.
//  Copyright © 2015 Joshua Skaroff. All rights reserved.
//

#import "iPhone.h"

@implementation iPhone

-(void)setupComputerValues {
    [super setupComputerValues];
    
    self.make = @"Apple";
    self.model = @"iPhone 6";
    
    self.numberOfCPUs = 2;
    self.numberOfGPUs = 4;
    self.megabytesOfMemory = 1024;
    self.megabytesOfStorage = 64 * 1024;
    
    self.hasWifi = YES;
    self.hasUsb = YES;
    self.hasAudioOut = YES;
    
}
@end
