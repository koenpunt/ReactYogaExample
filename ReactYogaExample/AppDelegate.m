// Untitled 1 - Copyright © 2018 Koen. All rights reserved.

#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSURL* jsLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];

    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsLocation
                                                        moduleName:@"ReactYogaExample"
                                                 initialProperties:nil
                                                     launchOptions:launchOptions];
    self.bridge = rootView.bridge;

    rootView.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.00];

    UIViewController *rootViewController = [UIViewController new];
    rootViewController.view = rootView;
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = rootViewController;
    [_window makeKeyAndVisible];

    return YES;
}

@end
