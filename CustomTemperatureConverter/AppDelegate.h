//
//  AppDelegate.h
//  CustomTemperatureConverter
//
//  Created by Yung Dai on 2015-04-19.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TemperatureViewController.h"


// foward decelare ViewController
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//property for the view controller
@property (strong, nonatomic) ViewController *viewController;


@end

