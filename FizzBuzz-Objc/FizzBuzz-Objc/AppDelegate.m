//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    for (int i = 1; i < 101; i++) {
        BOOL buzzed = [self isBuzzed:i];
        BOOL fizzed = [self isFizzed:i];
        
        if (buzzed && !fizzed) {
            NSLog (@"buzz");
        } else if (!buzzed && fizzed) {
            NSLog(@"fizz");
        } else if (buzzed && fizzed) {
            NSLog(@"fizzbuzz");
        } else {
            NSLog(@"%d", i);
            }
            
        }
    return TRUE;
}
              
-(BOOL)isBuzzed:(int)number {
    if (number % 3 ==0) {
        return TRUE;
    } else if ([[NSString stringWithFormat:@"%d", number] containsString:@"3"]) {
        return TRUE;
    } else {
        return FALSE;
    }
}

-(BOOL)isFizzed:(int)number {
    if (number % 5 ==0) {
        return TRUE;
    } else if ([[NSString stringWithFormat:@"%d", number] containsString:@"5"]) {
        return TRUE;
    } else {
        return FALSE;
    }
}

@end
