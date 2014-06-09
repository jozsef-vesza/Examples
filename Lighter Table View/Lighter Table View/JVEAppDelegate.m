//
//  JVEAppDelegate.m
//  Lighter Table View
//
//  Created by Jozsef Vesza on 09/06/14.
//  Copyright (c) 2014 Jozsef Vesza. All rights reserved.
//

#import "JVEAppDelegate.h"
#import "JVEMainViewController.h"

@implementation JVEAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[JVEMainViewController alloc] init]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
