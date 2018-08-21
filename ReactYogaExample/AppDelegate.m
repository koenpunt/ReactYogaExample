// Untitled 1 - Copyright © 2018 Koen. All rights reserved.

#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

#import "AppDelegate.h"
#import "ReactYogaExample-Swift.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSURL* jsLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];

    _bridge = [[RCTBridge alloc] initWithBundleURL:jsLocation
                                    moduleProvider:nil
                                     launchOptions:launchOptions];

    NativeViewController *rootViewController = [NativeViewController new];

    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = rootViewController;
    [_window makeKeyAndVisible];

    return YES;
}

@end
