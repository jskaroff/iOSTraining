//
//  Computer.m
//  iOSTraining
//
//  Created by Joshua Skaroff on 11/30/15.
//  Copyright © 2015 Joshua Skaroff. All rights reserved.
//

#import "Computer.h"

@implementation Computer

- (void)setupComputerValues {
    self.make = nil;
    self.model = nil;
    self.name = nil;
    self.cpuArchitecture = nil;
    
    self.numberOfCPUs = 0;
    self.numberOfGPUs = 0;
    self.megabytesOfMemory = 0;
    self.megabytesOfStorage = 0;
    
    self.hasAudioOut = NO;
    self.hasUsb = NO;
    self.hasWifi = NO;
    
}

@end
