//
//  rectController.m
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 11/13/19.
//  Copyright © 2019 Hale, Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "control.h"
#import "rectController.h"

@implementation rectController
@synthesize base, height, area;

- (void)viewDidLoad {
    [super viewDidLoad];
    [base setText:@"0"];
    [height setText:@"0"];
    [area setText:@"0"];
}

- (IBAction)calculate:(id)sender {
    double areaCalc = square(base.text.doubleValue, height.text.doubleValue);
    [area setText:[NSString stringWithFormat:@"%lf", areaCalc]];
}
@end


