//
//  SYFlashLight.m
//  zhangshaoyu
//
//  Created by zhangshaoyu on 14-6-23.
//  Copyright (c) 2014年 zhangshaoyu. All rights reserved.
//

#import "SYFlashLight.h"
#import <AVFoundation/AVFoundation.h>

@interface SYFlashLight ()

@property (nonatomic, strong) AVCaptureDevice *captureDevice;

@end

@implementation SYFlashLight

+ (instancetype)shareFlash
{
    static SYFlashLight *flashLight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        flashLight = [[self alloc] init];
    });
    return flashLight;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    }
    return self;
}

- (void)openFlashLight:(void (^)(BOOL hasFlash, BOOL isOpen))complete
{
    BOOL enable = NO;
    BOOL open = NO;
    
    if ([self.captureDevice hasTorch] && [self.captureDevice hasFlash])
    {
        enable = YES;
        
        if (self.captureDevice.torchMode == AVCaptureTorchModeOff)
        {
            [self.captureDevice lockForConfiguration:nil];
            [self.captureDevice setTorchMode: AVCaptureTorchModeOn];
            [self.captureDevice unlockForConfiguration];
            
            open = YES;
        } else {
            [self.captureDevice lockForConfiguration:nil];
            [self.captureDevice setTorchMode: AVCaptureTorchModeOff];
            [self.captureDevice unlockForConfiguration];
            
            open = NO;
        }
    } else {
        enable = NO;
        open = NO;
    }
    
    if (complete) {
        complete(enable, open);
    }
}

@end
