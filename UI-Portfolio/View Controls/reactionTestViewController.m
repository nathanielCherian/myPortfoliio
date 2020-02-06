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
@synthesize timeLabel, clicked, firstClicked, gameLabel, resetButton;
float gameTime;

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.clicked.backgroundColor = [UIColor redColor];
    self.clicked.hidden = YES;
    self.timeLabel.hidden = YES;
    self.gameLabel.hidden = YES;
    self.resetButton.hidden = YES;

}

- (IBAction)clicked:(id)sender {

    self.gameTimer = [NSTimer scheduledTimerWithTimeInterval:.001 target:self selector:@selector(moveWalls) userInfo:nil repeats:YES];
    gameTime = 0;
    
    self.firstClicked.hidden = YES;
    self.gameLabel.hidden = NO;
}


int r;
int temp1 = 0;
float lilGameTime = 0;
-(void)moveWalls {
    lilGameTime = lilGameTime + .001;
   // NSLog(@"%f", lilGameTime);
    
    
        r = rand() % 10000;
    NSLog(@"%d", r);
        if(r == 33){
            self.gameLabel.hidden = YES;
            temp1 = r;
            NSLog(@"HEHE");
            gameTime = gameTime + .001;
            lilGameTime = 0;
            self.clicked.hidden = NO;
        }
        if(temp1 == 33){
            NSLog(@"HAHA");
            //gameTime = gameTime + .001;
        }
        

}

- (IBAction)reactClicked:(id)sender {
    timeLabel.text = [NSString stringWithFormat:@"%f" , lilGameTime];
    self.timeLabel.hidden = NO;
    self.resetButton.hidden = NO;
    /*
    UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(rand() % 500,rand() % 700, rand() % 600, rand() % 600)];
    [imgView setImage:[UIImage imageNamed:@"s3xyZevmydaddy.jpg"]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:imgView];
    //[self.gameTimer invalidate]; */
}

- (IBAction)resetClicked:(id)sender {
    lilGameTime = 0;
    self.clicked.hidden = YES;
    self.gameLabel.hidden = NO;
    self.firstClicked.hidden = YES;
    self.timeLabel.hidden = YES;
    self.resetButton.hidden = YES;
    temp1 = 0;
}



@end
