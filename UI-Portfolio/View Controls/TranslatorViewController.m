//
//  TranslatorViewController.m
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 1/16/20.
//  Copyright © 2020 Hale, Andrew. All rights reserved.
//

#import "TranslatorViewController.h"
#include "control.h"

@implementation TranslatorViewController
@synthesize pigLatLabel, shorthandLabel, translateString;

- (void)viewDidLoad {
    [super viewDidLoad];
    [pigLatLabel setText:@"'piglatin'"];
    [shorthandLabel setText:@"'shorthand'"];
    
}

- (IBAction)generate:(id)sender {
    const char *cInput = [translateString.text UTF8String];
    const char *cInput2 = [translateString.text UTF8String];
    //long inputLength = translateString.text.length;
    // Method 1 - Array method
  //  output1.text = [NSString stringWithFormat:@"%s" , revXArray((char*)cInput, inputLength) ];
    
    shorthandLabel.text = [NSString stringWithFormat:@"%s" , shorty((char *)cInput)];
    pigLatLabel.text = [NSString stringWithFormat:@"%s", pigLatti((char *)cInput2)];

}

@end
