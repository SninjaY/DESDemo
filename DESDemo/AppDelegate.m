//
//  AppDelegate.m
//  DESDemo
//
//  Created by tekuba.net on 13-7-23.
//  Copyright (c) 2013年 tekuba.net. All rights reserved.
//

#import "AppDelegate.h"
#import "DES.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //This is a demo edited by www.tekuba.net
    //DES CBC mode test
    NSLog(@"DES CBC mode test");
    NSString *keyString = @"tekubanet";//8 bytes are valid
    Byte srcBytes[1024] = {'1','2','3','4','5','6','7','8','9','0','A','B','C','D','E','F'};
    Byte *encryptBytes = [DES encryptDES:srcBytes key:keyString useEBCmode:NO];
    
    NSLog(@"encryptBytes = ");
    for(int i = 0 ;i < strlen((const char *)encryptBytes);i++)
    {
        NSLog(@"%c",encryptBytes[i]);
    }

    Byte *decryptBytes = [DES decryptDES:encryptBytes key:keyString useEBCmode:NO];
    NSLog(@"decryptBytes = %@",[NSString stringWithUTF8String:(const char*)decryptBytes]);
    free(encryptBytes);
    free(decryptBytes);
    
    //DES EBC mode test
//    NSLog(@"DES EBC mode test");
//    NSString *keyString = @"tekubanet";//8 bytes are valid
//    Byte srcBytes[1024] = {'1','2','3','4','5','6','7','8','9','0','A','B','C','D','E','F'};
//    Byte *encryptBytes = [DES encryptDES:srcBytes key:keyString useEBCmode:YES];
//    
//    NSLog(@"encryptBytes = ");
//    for(int i = 0 ;i < strlen((const char *)encryptBytes);i++)
//    {
//        NSLog(@"%c",encryptBytes[i]);
//    }
//    
//    Byte *decryptBytes = [DES decryptDES:encryptBytes key:keyString useEBCmode:YES];
//    NSLog(@"decryptBytes = %@",[NSString stringWithUTF8String:(const char*)decryptBytes]);
//    free(encryptBytes);
//    free(decryptBytes);
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
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
