//
//  SYFlashLight.m
//  zhangshaoyu
//
//  Created by zhangshaoyu on 14-6-23.
//  Copyright (c) 2014年 zhangshaoyu. All rights reserved.
//

#import "SYFlashLight.h"
#import <AVFoundation/AVFoundation.h>

static AVCaptureDevice *captureDevice;

@implementation SYFlashLight

+ (void)showFreshlight
{
	captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    if ([captureDevice hasTorch] && [captureDevice hasFlash])
    {
        if (captureDevice.torchMode == AVCaptureTorchModeOff)
        {
            [captureDevice lockForConfiguration:nil];
            [captureDevice setTorchMode: AVCaptureTorchModeOn];
            [captureDevice unlockForConfiguration];
        }
        else
        {
            [captureDevice lockForConfiguration:nil];
            [captureDevice setTorchMode: AVCaptureTorchModeOff];
            [captureDevice unlockForConfiguration];
        }
    }
    else
    {
        [[[UIAlertView alloc] initWithTitle:@"温馨提醒"
                                    message:@"抱歉，该设备没有闪光灯而无法使用闪光灯功能！"
                                   delegate:nil
                          cancelButtonTitle:@"确定"
                          otherButtonTitles:nil] show];
    }
}

@end
