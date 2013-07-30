//
//  TemperatureConverterViewController.h
//  TemperatureConverter
//
//  Created by Wenqing Dai on 7/29/13.
//  Copyright (c) 2013 Yahoo! Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureConverterViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UITextField *fahrenheit;
@property (nonatomic, strong) IBOutlet UITextField *celsius;
@property (nonatomic, strong) IBOutlet UIButton *convert;

-(IBAction)onDoneButton;

@end
