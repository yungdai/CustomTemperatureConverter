//
//  ViewController.m
//  CustomTemperatureConverter
//
//  Created by Yung Dai on 2015-04-19.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        UISegmentedControl  *segmentedControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"Celcius",@"Farenheit",nil]];
        // Creating a UISegmentedControl object.
        [segmentedControl setFrame:CGRectMake(5, 5, 150, 35)];
        

    }
    return self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
