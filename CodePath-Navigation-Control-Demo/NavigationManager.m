//
//  NavigationManager.m
//  CodePath-Navigation-Control-Demo
//
//  Created by  Jeffrey Hurray on 2/1/17.
//  Copyright © 2017 Jeffrey Hurray. All rights reserved.
//

#import "NavigationManager.h"
#import "LoggedInViewController.h"
#import "LoggedOutViewController.h"

@interface NavigationManager ()

@property (nonatomic, assign) BOOL isLoggedIn;
@property (nonatomic, strong) UINavigationController *navigationController;

@end

@implementation NavigationManager

+(instancetype)shared
{
    static NavigationManager *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[NavigationManager alloc] init];
    });
    return sharedInstance;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.isLoggedIn = NO;
        
        UIViewController *root = self.isLoggedIn ? [self loggedInVC] : [self loggedOutVC];
        
        self.navigationController = [[UINavigationController alloc] init];
        self.navigationController.viewControllers = @[root];
        [self.navigationController setNavigationBarHidden:YES];
    }
    return self;
}


- (UIViewController *)rootViewController
{
    return self.navigationController;
}


- (UIViewController *)loggedInVC
{
    // Create root VC for the tab's navigation controller
    LoggedInViewController *vc = [[LoggedInViewController alloc] initWithNibName:@"LoggedInViewController" bundle:nil];
    vc.title = @"Logged In";
    
    // create tab item
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Logged In" image:nil tag:0];
    vc.tabBarItem = item;
    
    
    // create navigation controller
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:vc];
    
    // create tab bar view controller
    UITabBarController *tabController = [[UITabBarController alloc] init];
    // Add navigation controller to tab bar controller
    tabController.viewControllers = @[navController];
    
    return tabController;
}


- (UIViewController *)loggedOutVC
{
    LoggedOutViewController *vc = [[LoggedOutViewController alloc] initWithNibName:@"LoggedOutViewController" bundle:nil];
    
    return vc;
}


- (void)logIn
{
    self.isLoggedIn = YES;
    
    NSArray *vcs = @[[self loggedInVC]];
    [self.navigationController setViewControllers:vcs];
}


- (void)logOut
{
    self.isLoggedIn = NO;
    self.navigationController.viewControllers = @[[self loggedOutVC]];
}

@end
