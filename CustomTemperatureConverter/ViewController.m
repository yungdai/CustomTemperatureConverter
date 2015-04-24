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


// here are the two methods to do the take the temperatureInput and convert them to the respective temperature values
- (void)convertFarenheitToCelsius {
    double farenheit = [_temperatureInput.text doubleValue];
    double celcius = (farenheit - 32) / 1.8;
    
    NSString *resultLabel = [[NSString alloc]initWithFormat:@"%.0f°F = %.0f°C", farenheit, celcius];
    _temperatureResultLabel.text = resultLabel;
}


- (void)convertCelsiusToFarenheit {
    double celsius = [_temperatureInput.text doubleValue];
    double farenheit = (celsius * 1.8) +32;
    
    NSString *resultLabel = [[NSString alloc]initWithFormat:@"%.0f°C = %.0f°F", celsius, farenheit];
    
    _temperatureResultLabel.text = resultLabel;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // create a white background
    self.view.backgroundColor = [UIColor whiteColor];
    

}

-(void)segmentedControlValueDidChange:(UISegmentedControl *)segment
{
    switch (segment.selectedSegmentIndex) {
        case 0:{
            //action for the first button (Current)
            break;}
        case 1:{
            //action for the first button (Current)
            break;}
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
