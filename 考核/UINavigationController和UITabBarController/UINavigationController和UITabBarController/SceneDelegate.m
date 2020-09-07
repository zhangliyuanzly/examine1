//
//  SceneDelegate.m
//  UINavigationController和UITabBarController
//
//  Created by 张立远 on 2020/9/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "SceneDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    _window = [[UIWindow alloc] initWithWindowScene:scene];
    
    [_window makeKeyAndVisible];
    
    FirstViewController *First = [[FirstViewController alloc] init];
    SecondViewController *Second = [[SecondViewController alloc] init];
    ThirdViewController *Third = [[ThirdViewController alloc] init];
    FourthViewController *Fourth = [[FourthViewController alloc] init];
    FifthViewController *Fifth = [[FifthViewController alloc] init];
    
    First.title = @"视图1";
    Second.title = @"视图2";
    Third.title = @"视图3";
    Fourth.title = @"视图4";
    Fifth.title = @"视图5";
    
    First.view.backgroundColor = [UIColor whiteColor];
    Second.view.backgroundColor = [UIColor whiteColor];
    Third.view.backgroundColor = [UIColor whiteColor];
    Fourth.view.backgroundColor = [UIColor whiteColor];
    Fifth.view.backgroundColor = [UIColor whiteColor];
    
    //创建了一个标签控制器
    //分栏控制器和标签控制器差不多好像
    UITabBarController *tb = [[UITabBarController alloc] init];
    //导航栏控制器
    UINavigationController *pushFirst = [[UINavigationController alloc] initWithRootViewController:First];
    
    NSArray *tempArray = [NSArray arrayWithObjects:pushFirst, Second, Third, Fourth,Fifth, nil];
    
    tb.viewControllers = tempArray;
    //根视图
    self.window.rootViewController = tb;
    
    tb.selectedIndex = 4;
    
    
    
    
    
    
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
