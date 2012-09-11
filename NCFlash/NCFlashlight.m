//
//  NCFlashlight.m
//  NCFlash
//
//  Created by 和泉田 領一 on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "NCFlashlight.h"

@interface NCFlashlight ()
@property (nonatomic, strong) AVCaptureSession *session;

@end

@implementation NCFlashlight
@dynamic on;
@synthesize session = _session;

+ (NCFlashlight *)sharedInstance {
    static NCFlashlight *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

- (BOOL)on {
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];

    return device.torchMode == AVCaptureTorchModeOn;
}

- (void)toggle {
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];

    if (device.torchMode == AVCaptureTorchModeOff) {
        AVCaptureSession *session = [[AVCaptureSession alloc] init];

        AVCaptureDeviceInput *input = [AVCaptureDeviceInput deviceInputWithDevice:device error:NULL];
        [session addInput:input];

        AVCaptureVideoDataOutput *output = [[AVCaptureVideoDataOutput alloc] init];
        [session addOutput:output];

        [session beginConfiguration];
        [device lockForConfiguration:nil];

        device.torchMode = AVCaptureTorchModeOn;

        [device unlockForConfiguration];
        [session commitConfiguration];

        [session startRunning];

        self.session = session;
    } else {
        [self.session stopRunning];
        self.session = nil;
    }
}

@end
