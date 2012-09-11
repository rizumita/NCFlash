//
//  NCFViewController.m
//  NCFlash
//
//  Created by 和泉田 領一 on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NCFViewController.h"
#import "NCFlashlight.h"

@interface NCFViewController ()
@property (nonatomic, strong) NCFlashlight *flashlight;


@end

@implementation NCFViewController
@synthesize turnButton;
@synthesize flashlight = _flashlight;


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.flashlight = [[NCFlashlight alloc] init];

    if (!self.flashlight.on) [self.flashlight toggle];
}

- (void)viewDidUnload
{
    [self setTurnButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)turnButtonTapped:(id)sender {
    [self.flashlight toggle];

    if (self.flashlight.on) {
        [self.turnButton setTitle:@"Turn off" forState:UIControlStateNormal];
    } else {
        [self.turnButton setTitle:@"Turn on" forState:UIControlStateNormal];
    }
}

@end
