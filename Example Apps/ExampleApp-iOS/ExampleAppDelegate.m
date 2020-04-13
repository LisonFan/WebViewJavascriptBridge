#import "ExampleAppDelegate.h"
#import "ExampleWKWebViewController.h"

@implementation ExampleAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 1. Create the tab footer and add the WKWebView example
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    // 3. Create the  WKWebView example for devices >= iOS 8
    if([WKWebView class]) {
        ExampleWKWebViewController* WKWebViewExampleController = [[ExampleWKWebViewController alloc] init];
        WKWebViewExampleController.tabBarItem.title             = @"WKWebView";
        [tabBarController addChildViewController:WKWebViewExampleController];
    }

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
