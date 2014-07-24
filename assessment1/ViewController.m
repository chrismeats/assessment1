//
//  ViewController.m
//  assessment1
//
//  Created by ETC ComputerLand on 7/24/14.
//  Copyright (c) 2014 cmeats. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField1;
@property (strong, nonatomic) IBOutlet UITextField *textField2;
@property (strong, nonatomic) IBOutlet UILabel *labelResult;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)onButtonClickMultiply:(id)sender {
    float number1 = [self.textField1.text floatValue];
    float number2 = [self.textField2.text floatValue];
    float answerNum = number1 * number2;

    self.labelResult.text = [NSString stringWithFormat:@"%f", answerNum];

    [self.labelResult sizeToFit];
    if (answerNum < 0) {
        self.labelResult.textColor = [UIColor redColor];
    } else {
        self.labelResult.textColor = [UIColor greenColor];
    }

    [self.textField1 resignFirstResponder];
    [self.textField2 resignFirstResponder];
}


@end
