//
//  AppDelegate.m
//  view的创建
//
//  Created by apple on 15/12/15.
//  Copyright © 2015年 SUNCO. All rights reserved.
//

/**
 这个Demo有storyboard文件，但是在项目的TARGETS中的General中的Deployment Info中的Main Interface后面填空，代表不用项目提供的storyboard文件，而自己在AppDelegate.m文件中用代码写出storyboard文件所做的工作。
 */
#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) ViewController *vc;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     1、创建窗口：
     */
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    /**
     2、利用storyboard文件来创建视图控制器：
     */
    [self loadViewControllerWithStoryboard];
    
    /**
     2、利用xib文件来创建视图控制器：
     */
//    [self loadViewControllerWithXib];
    
    /**
     3、用创建好的视图控制器来做窗口的根视图控制器，然后使窗口成为主窗口并显示出来：
     */
    self.window.rootViewController = self.vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

#pragma mark ————— 利用storyboard文件来创建视图控制器 —————
- (void)loadViewControllerWithStoryboard
{
    //1、加载storyboard文件：
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"a" bundle:[NSBundle mainBundle]];
    
    //2、创建storyboard文件中箭头所指向的视图控制器：
    self.vc = [storyBoard instantiateInitialViewController];
}

#pragma mark ————— 利用xib文件来创建视图控制器 —————
/**
 当用initWithNibName:bundle:方法加载xib文件并且initWithNibName:后面为nil（没有指定加载哪个xib文件）的方式来创建视图控制器进而加载视图控制器的view的时候，系统首先会检测即将加载的视图控制器类中有没有loadView方法，如果有的话，则按照loadView方法中的代码加载view；如果没有检测到此方法的话，则检测有没有与即将加载的视图控制器的类名相同的xib文件，如果有的话则按照这个xib文件加载相应的view；如果没有的话则检测有没有与即将加载的视图控制器的类名相同但不带Controller的xib文件，如果有的话则按照这个xib文件加载相应的view；如果都没有的话，则创建一个空的view。
 */
- (void)loadViewControllerWithXib
{
//    self.vc = [[ViewController alloc] initWithNibName:@"VC" bundle:[NSBundle mainBundle]];
    
    self.vc = [[ViewController alloc] initWithNibName:nil bundle:[NSBundle mainBundle]];
    
    /**
     下面的代码与上面一句的代码作用相同；
     只有视图控制器的init方法里面才会调用initWithNibName:bundle:方法。
     */
//    self.vc = [[ViewController alloc] init];
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
