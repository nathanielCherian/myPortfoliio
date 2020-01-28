//
//  ViewController.m
//  UI-Portfolio
//
//  Created by Do, Kevin on 11/4/19.
//  Copyright © 2019 Do, Kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
        AVAudioPlayer *player;
}

@end

@implementation ViewController

@synthesize pythag;
@synthesize search;
@synthesize calc;
@synthesize jumpers;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view. Ω
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"menuMusic" ofType:@"mp3"];
    NSURL *url = [NSURL URLWithString:path];
    player = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:NULL];
    [player play];
    
    pythag.layer.cornerRadius = 35;
    search.layer.cornerRadius = 35;
    calc.layer.cornerRadius = 35;
    jumpers.layer.cornerRadius = 35;
    
}


@end
