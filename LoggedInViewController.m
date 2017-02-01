//
//  LoggedInViewController.m
//  CodePath-Navigation-Control-Demo
//
//  Created by  Jeffrey Hurray on 2/1/17.
//  Copyright © 2017 Jeffrey Hurray. All rights reserved.
//

#import "LoggedInViewController.h"
#import "NavigationManager.h"

@interface LoggedInViewController ()

@end

@implementation LoggedInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)onLogout:(id)sender
{
    [[NavigationManager shared] logOut];
}


@end
