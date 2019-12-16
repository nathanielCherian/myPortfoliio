//
//  ReverseViewController.m
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 12/12/19.
//  Copyright © 2019 Hale, Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "control.h"
#import "ReverseViewController.h"

@implementation ReverseController
@synthesize output1, output2, output3, stringinput, palindrome;



- (void)viewDidLoad {
    [super viewDidLoad];
    [output1 setText:@"Array Swap"];
    [output2 setText:@"Recursion"];
    [output3 setText:@"Pointers"];
    [palindrome setText:@"Palindrome Check"];
}

- (IBAction)generate:(id)sender {
    const char *cInput = [stringinput.text UTF8String];
    long inputLength = stringinput.text.length;
    // Method 1 - Array method
    output1.text = [NSString stringWithFormat:@"%s" , revXArray((char*)cInput, inputLength) ];
    // Method 2 - Recursion method
    output2.text = [NSString stringWithFormat:@"%s" , revXRecurse((char*)cInput, inputLength) ];
    // Method 3 - Pointers method
    output3.text = [NSString stringWithFormat:@"%s" , revXPointer((char*)cInput, inputLength) ];
    //Palindrome Check
    palindrome.text = [NSString stringWithFormat:@"%s" , paliEval((char*)cInput, inputLength) ];
}


@end
