//
//  NCFViewController.m
//  NCFlash
//
//  Created by 和泉田 領一 on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NCFViewController.h"
#import "NCFlashlight.h"

@implementation NCFViewController
@synthesize turnButton;


- (void)viewDidLoad
{
    [super viewDidLoad];

    if (![NCFlashlight sharedInstance].on) {
        [[NCFlashlight sharedInstance] toggle];
        [self.turnButton setTitle:@"Turn off" forState:UIControlStateNormal];
    }
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
    [[NCFlashlight sharedInstance] toggle];

    if ([NCFlashlight sharedInstance].on) {
        [self.turnButton setTitle:@"Turn off" forState:UIControlStateNormal];
    } else {
        [self.turnButton setTitle:@"Turn on" forState:UIControlStateNormal];
    }
}

@end
