//
//  reactionTestViewController.m
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 2/3/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

#import "reactionTestViewController.h"

@interface reactionTestViewController ()
    
@end


@implementation reactionTestViewController
@synthesize timeLabel, clicked, firstClicked, gameLabel;
float gameTime;

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.clicked.backgroundColor = [UIColor redColor];
    self.clicked.hidden = YES;
    self.timeLabel.hidden = YES;
    self.gameLabel.hidden = YES;

}

- (IBAction)clicked:(id)sender {

    self.gameTimer = [NSTimer scheduledTimerWithTimeInterval:.001 target:self selector:@selector(moveWalls) userInfo:nil repeats:YES];
    gameTime = 0;
    
    self.firstClicked.hidden = YES;
    self.gameLabel.hidden = NO;
}


int r;
int temp = 0;
int lilGameTime = 0;
-(void)moveWalls {
    NSLog(@"%d", lilGameTime);


        r = rand() % 100000;
        if(r == 33){
            self.gameLabel.hidden = YES;
            temp = r;
            NSLog(@"HEHE");
            gameTime = gameTime + .001;
            self.clicked.hidden = NO;
        }
        if(temp == 33){
            NSLog(@"HAHA");
            gameTime = gameTime + .001;
        }
        

}

- (IBAction)reactClicked:(id)sender {
    timeLabel.text = [NSString stringWithFormat:@"%f" , gameTime];
    self.timeLabel.hidden = NO;
    [self.gameTimer invalidate];
}



@end
