//
//  ViewController.m
//  MyAnalytics
//
//  Created by Virtual Box on 10/25/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import "HomeController.h"
@import Firebase;
@import GoogleSignIn;

@interface HomeController ()
@property(strong,nonatomic) FIRAuthStateDidChangeListenerHandle handle;
@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [GIDSignIn sharedInstance].uiDelegate = self;
    [[GIDSignIn sharedInstance] signIn];	
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.handle = [[FIRAuth auth] addAuthStateDidChangeListener:^(FIRAuth *_Nonnull auth, FIRUser *_Nullable user) {
           // ...
       }];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [[FIRAuth auth] removeAuthStateDidChangeListener:_handle];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
