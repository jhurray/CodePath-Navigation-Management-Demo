//
//  LoggedOutViewController.m
//  CodePath-Navigation-Control-Demo
//
//  Created by  Jeffrey Hurray on 2/1/17.
//  Copyright © 2017 Jeffrey Hurray. All rights reserved.
//

#import "LoggedOutViewController.h"
#import "NavigationManager.h"

@interface LoggedOutViewController ()

@end

@implementation LoggedOutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)onLogin:(id)sender
{
    [[NavigationManager shared] logIn];
}


@end
