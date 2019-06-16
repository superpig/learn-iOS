//
//  AppDelegate.m
//  learn
//
//  Created by zhuchao02 on 2019/6/15.
//  Copyright © 2019 zhuchao02. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    ViewController *viewController = [[ViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
//    UIViewController *newsViewController = [[UIViewController alloc] init];
//    newsViewController.view.backgroundColor = [UIColor redColor];
    navigationController.tabBarItem.title = @"新闻";
    navigationController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x.png"];
    navigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/page_selected@2x.png"];
    
    UIViewController *videoController = [[UIViewController alloc]init];
    videoController.view.backgroundColor = [UIColor yellowColor];
    videoController.tabBarItem.title = @"视频";
    videoController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    videoController.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];

    UIViewController *recommendController = [[UIViewController alloc]init];
    recommendController.view.backgroundColor = [UIColor greenColor];
    recommendController.tabBarItem.title = @"推荐";
    recommendController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
    recommendController.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/like_selected@2x.png"];

    UIViewController *mineViewController = [[UIViewController alloc]init];
    mineViewController.view.backgroundColor = [UIColor lightGrayColor];
    mineViewController.tabBarItem.title = @"我的";
    mineViewController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/home@2x.png"];
    mineViewController.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/home_selected@2x.png"];

    [tabbarController setViewControllers:@[navigationController,videoController,recommendController,mineViewController]];    
    self.window.rootViewController = tabbarController;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
