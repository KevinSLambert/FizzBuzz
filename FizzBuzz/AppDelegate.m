//
//  AppDelegate.m
//  FizzBuzz
//
//  Created by Kevin Lambert on 1/4/15.
//  Copyright (c) 2015 KSL. All rights reserved.
//

#import "AppDelegate.h"

static int n = 0;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    for ( int fizzBuzzNum = 0; fizzBuzzNum < 100; fizzBuzzNum++){
        if (isBuzzed(fizzBuzzNum) == TRUE && isFizzed(fizzBuzzNum) == FALSE){
            NSLog(@"%d , Buzz", fizzBuzzNum);
        }
        else if (isFizzed(fizzBuzzNum) == TRUE && isBuzzed(fizzBuzzNum) == FALSE){
            NSLog(@"%d , Fizz", fizzBuzzNum);
        }
        else if (isFizzed(fizzBuzzNum) == TRUE && isBuzzed(fizzBuzzNum) == TRUE){
            NSLog(@"%d , FizzBuzz", fizzBuzzNum);
        }
        else {
            NSLog(@"%d",fizzBuzzNum);
        }
    }
    
    return YES;
}
bool isBuzzed(int i){
    //is a multiple of 3)
    if ((i % 3) == 0) {
        return TRUE;
    }
    while (i > 0) {
        n = i%10;
        i = i/10;
        if (n == 5) {
            return TRUE;
        }
    }
    else {
        return FALSE;
}
}

bool isFizzed(int x){
    if ((x % 5) == 0) {
        return TRUE;
    }
    else if (if 'x' has a 5 in it){
        return TRUE;
    }
    else {
        return FALSE;
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
