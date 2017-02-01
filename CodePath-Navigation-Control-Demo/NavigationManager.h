//
//  NavigationManager.h
//  CodePath-Navigation-Control-Demo
//
//  Created by  Jeffrey Hurray on 2/1/17.
//  Copyright © 2017 Jeffrey Hurray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NavigationManager : NSObject

+ (instancetype)shared;

- (UIViewController *)rootViewController;

- (void)logIn;
- (void)logOut;

@end
