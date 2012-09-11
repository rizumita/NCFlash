//
//  NCFViewController.h
//  NCFlash
//
//  Created by 和泉田 領一 on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NCFlashlight;

@interface NCFViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *turnButton;

- (IBAction)turnButtonTapped:(id)sender;
@end
