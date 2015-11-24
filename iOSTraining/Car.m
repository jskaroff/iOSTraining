//
//  Car.m
//  iOSTraining
//
//  Created by Joshua Skaroff on 11/24/15.
//  Copyright © 2015 Joshua Skaroff. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)setupVehicleValues {
    self.make = @"Honda";
    self.model = @"Fit Sport";
    self.name = nil;
    
    self.numberOfDoors = 5;
    self.numberOfWheels = 4;
    
    self.runsOnGas = YES;
}

@end
