//
//  Vehicle.h
//  iOSTraining
//
//  Created by Joshua Skaroff on 11/24/15.
//  Copyright © 2015 Joshua Skaroff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *name;

@property (nonatomic, assign) NSInteger numberOfWheels;
@property (nonatomic, assign) NSInteger numberOfDoors;

@property (nonatomic, assign) BOOL runsOnGas;

- (void)setupVehicleValues;

@end