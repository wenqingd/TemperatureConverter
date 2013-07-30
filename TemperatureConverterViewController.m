//
//  TemperatureConverterViewController.m
//  TemperatureConverter
//
//  Created by Wenqing Dai on 7/29/13.
//  Copyright (c) 2013 Yahoo! Inc. All rights reserved.
//

#import "TemperatureConverterViewController.h"

@interface TemperatureConverterViewController ()

-(void) ctofConvert;
-(void) ftocConvert;


@end

@implementation TemperatureConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.celsius.delegate = self;
    self.fahrenheit.delegate = self;
    [self.convert addTarget:self action:@selector(onDoneButton) forControlEvents:UIControlEventTouchUpInside];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITextField delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.view endEditing:YES];
    return YES;
}

-(BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    self.celsius.text = @"";
    self.fahrenheit.text = @"";
    return YES;
}


-(IBAction)onDoneButton
{
    [self.view endEditing:YES];
    if (!([self.celsius.text length]==0 && [self.fahrenheit.text length]==0)){
        if ([self.celsius.text length]==0)
        {
            [self ftocConvert];
        }
        else if ([self.fahrenheit.text length]==0)
        {
            [self ctofConvert];
        }
    }
    
}

#pragma mark - private methods

-(void)ctofConvert
{
    float celsiumTmp =  [self.celsius.text floatValue];
    float fahrenheitTmp = celsiumTmp *9 / 5 + 32;
    self.fahrenheit.text = [NSString stringWithFormat:@"%0.2f", fahrenheitTmp];
    
}

-(void)ftocConvert
{
    float fahrenheitTmp =  [self.fahrenheit.text floatValue];
    float celsiumTmp = (fahrenheitTmp - 32)  *5 / 9;
    self.celsius.text = [NSString stringWithFormat:@"%0.2f", celsiumTmp];
}
@end
