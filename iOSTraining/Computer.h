//
//  Computer.h
//  iOSTraining
//
//  Created by Joshua Skaroff on 11/30/15.
//  Copyright © 2015 Joshua Skaroff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Computer : NSObject

@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *cpuArchitecture;

@property (nonatomic, assign) NSInteger numberOfCPUs;
@property (nonatomic, assign) NSInteger numberOfGPUs;
@property (nonatomic, assign) NSInteger megabytesOfMemory;
@property (nonatomic, assign) NSInteger megabytesOfStorage;


@property (nonatomic, assign) BOOL hasWifi;
@property (nonatomic, assign) BOOL hasUsb;
@property (nonatomic, assign) BOOL hasAudioOut;
// @property (nonatomic, assign) enum networkInterfaces;

- (void) setupComputerValues;
@end
