//
//  AppDelegate.h
//  MyAnalytics
//
//  Created by Virtual Box on 10/25/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;
@import GoogleSignIn;

@interface AppDelegate : UIResponder <UIApplicationDelegate, GIDSignInDelegate	>

@property (strong, nonatomic) UIWindow *window;


@end

