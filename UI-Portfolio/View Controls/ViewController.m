//
//  ViewController.m
//  UI-Portfolio
//
//  Created by Do, Kevin on 11/4/19.
//  Copyright © 2019 Do, Kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pythag;
@synthesize search;
@synthesize calc;
@synthesize jumpers;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view. Ω
    
    pythag.layer.cornerRadius = 35;
    search.layer.cornerRadius = 35;
    calc.layer.cornerRadius = 35;
    jumpers.layer.cornerRadius = 35;
    
}


@end
