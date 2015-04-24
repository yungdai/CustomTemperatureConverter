//
//  TemperatureViewController.m
//  CustomTemperatureConverter
//
//  Created by Yung Dai on 2015-04-23.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@end

@implementation TemperatureViewController


// method for the UISegment Control layout

- (void)initSegmentedControl {
    // make the background white
    self.view.backgroundColor = [UIColor whiteColor];
    
    // create the segement control
    UISegmentedControl *temperatureSelectionControl = [[UISegmentedControl alloc]initWithItems:@[@"Celsius",@"Farenheit"]];
    temperatureSelectionControl.frame = CGRectMake(16, 41, 568, 29);
    [temperatureSelectionControl addTarget:self action:@selector(selectedTemperature:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:temperatureSelectionControl];

    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initSegmentedControl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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


- (void)selectedTemperature:(UISegmentedControl *)sender {
    switch (self.temperatureSelectionControl.selectedSegmentIndex)
    {
            
        case 0:
            [self convertCelsiusToFarenheit];
            break;
            
        case 1:
            [self convertFarenheitToCelsius];
            break;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
