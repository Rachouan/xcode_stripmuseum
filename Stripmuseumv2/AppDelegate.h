//
//  AppDelegate.h
//  Stripmuseumv2
//
//  Created by Rachouan Rejeb on 16/12/15.
//  Copyright © 2015 Rachouan Rejeb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) MainViewController *mainVc;
@property (nonatomic, strong) UINavigationController *navController;


@end

