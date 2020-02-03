//
//  breakBlocksViewController.m
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 1/29/20.
//  Copyright © 2020 Hale, Andrew. All rights reserved.
//

#import "breakBlocksViewController.h"




@implementation breakBlocksViewController
@synthesize wall, wall2, moveWall, ball;
int start = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.ball.center = CGPointMake(self.ball.center.x -100, self.ball.center.y -100);
    // Do any additional setup after loading the view.
    start = 1;
    self.balVelocityX = 20;
    self.balVelocityY = 20;
    self.gameTimer = [NSTimer scheduledTimerWithTimeInterval:.05 target:self selector:@selector(moveWalls) userInfo:nil repeats:YES];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];

    [self.view setUserInteractionEnabled:YES];
     
    // store point a touch began
    self.firstPoint = [touch locationInView:self.view];
}



-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
     
    // store point a touch end
    self.lastPoint = [touch locationInView:self.view];
     
    // logic to calculate swipevector as distance between touch began and touch end
    CGPoint swipeVector = CGPointMake(self.lastPoint.x - self.firstPoint.x, self.lastPoint.y - self.firstPoint.y);
     self.wallVelocityX = speedScale * swipeVector.x;

    


}

-(void)moveWalls {
    self.wallVelocityX = speedDamping * self.wallVelocityX;
      self.moveWall.center = CGPointMake(self.moveWall.center.x + self.wallVelocityX, self.moveWall.center.y + 0);
   
    if (start == 1) {
        self.ball.center = CGPointMake(self.ball.center.x + 0, self.ball.center.y + self.balVelocityY);
    }
    
    if (start == 2) {
        self.ball.center = CGPointMake(self.ball.center.x + self.balVelocityX, self.ball.center.y + self.balVelocityY);
    }
    
    if(fabs(self.wallVelocityX) < stopSpeed && fabs(self.wallVelocityY) < stopSpeed) {
     // [self.gameTimer invalidate];
      [self.view setUserInteractionEnabled:YES];
    }
    
    if (CGRectIntersectsRect(self.moveWall.frame, self.wall.frame)) {
    self.wallVelocityX = speedDamping * self.wallVelocityX * (-1);
    }
    
    if (CGRectIntersectsRect(self.moveWall.frame, self.wall2.frame)) {
    self.wallVelocityX = speedDamping * self.wallVelocityX * (-1);
    }
   /* if(start == 0){
      self.gameTimer = [NSTimer scheduledTimerWithTimeInterval:.05 target:self selector:@selector(startBallMove) userInfo:nil repeats:YES];
        start = 1;
    } */
    
    if (CGRectIntersectsRect(self.ball.frame, self.moveWall.frame)) {
    self.balVelocityY = self.balVelocityY * (-1);
    //self.balVelocityX = self.balVelocityY * (self.wallVelocityX/-100);
    start = 2;
    }
    if (CGRectIntersectsRect(self.ball.frame, self.wall3.frame)) {
    self.balVelocityY = self.balVelocityY * (-1);
    }
    if (CGRectIntersectsRect(self.ball.frame, self.wall.frame)) {
    self.balVelocityX = self.balVelocityX * (-1);
    }
    if (CGRectIntersectsRect(self.ball.frame, self.wall2.frame)) {
    self.balVelocityX = self.balVelocityX * (-1);
    }
}



-(void) startBallMove{
    self.ball.center = CGPointMake(self.ball.center.x, self.ball.center.y + 2);
}



@end
