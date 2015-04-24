//
//  ViewController.h
//  CustomTemperatureConverter
//
//  Created by Yung Dai on 2015-04-19.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UISegmentedControl *temperatureSelectionControl;
@property (weak, nonatomic) IBOutlet UILabel *temperatureResultLabel;
@property (strong, nonatomic) IBOutlet UITextField *temperatureInput;



@end

