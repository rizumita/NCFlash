//
//  NCFlashlight.h
//  NCFlash
//
//  Created by 和泉田 領一 on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NCFlashlight : NSObject

@property (nonatomic, assign, readonly) BOOL on;

+ (NCFlashlight *)sharedInstance;

- (void)toggle;

@end
