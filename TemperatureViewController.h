//
//  TemperatureViewController.h
//  CustomTemperatureConverter
//
//  Created by Yung Dai on 2015-04-23.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureViewController : UIViewController

@property (weak, nonatomic) UISegmentedControl *temperatureSelectionControl;
@property (weak, nonatomic) UILabel *temperatureResultLabel;
@property (strong, nonatomic) UITextField *temperatureInput;

@end
