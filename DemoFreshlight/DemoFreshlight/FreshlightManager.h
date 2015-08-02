//
//  FreshlightManager.h
//  DemoFreshlight
//
//  Created by zhangshaoyu on 14-6-23.
//  Copyright (c) 2014年 zhangshaoyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FreshlightManager : NSObject

/// 打开或关闭闪光灯
+ (void)showFreshlight;

@end

/*
 调用设备闪光灯
 使用“AVFoundation.framework”框架里的“AVCaptureDevice”来调用设备闪光灯。
 详细操作步骤如下：
 步骤1 导入“AVFoundation.framework”框架
 步骤2 引入头文件“<AVFoundation/AVFoundation.h>”
 即 #import <AVFoundation/AVFoundation.h>
 步骤3 初始化AVCaptureDevice实例
 AVCaptureDevice *captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
 步骤4 异常判断，判断设备是否支持闪光灯功能
 4-1 [captureDevice hasTorch]
 4-2 [captureDevice hasFlash]
 步骤5 闪光灯的打开或关闭
 [captureDevice lockForConfiguration:nil];
 [captureDevice setTorchMode: AVCaptureTorchModeOff]; // 打开或关闭
 [captureDevice unlockForConfiguration];
 
 */