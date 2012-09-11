//
//  NCFAppDelegate.m
//  NCFlash
//
//  Created by 和泉田 領一 on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NCFAppDelegate.h"

@implementation NCFAppDelegate

@synthesize window = _window;

-(void) application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
-(void) applicationWillResignActive:(UIApplication *)application
{
    UIApplication *app = [UIApplication sharedApplication];
    [app setApplicationIconBadgeNumber:0];
    [app cancelAllLocalNotifications];
    
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.alertBody = @"Turn on Flashlight";
    notification.fireDate = [NSDate dateWithTimeIntervalSinceNow:1];
    [app scheduleLocalNotification:notification];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
