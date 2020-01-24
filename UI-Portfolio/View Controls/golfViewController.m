//
//  golfViewController.m
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 1/16/20.
//  Copyright © 2020 Hale, Andrew. All rights reserved.
//

#import "golfViewController.h"

@implementation golfViewController
@synthesize ball, hole, movesLabel, nextLevelButton;
int counter = 0;

- (void)viewDidLoad {
  [super viewDidLoad];
  // changes hole image to be circular
  self.hole.layer.cornerRadius = .5*self.hole.layer.frame.size.height;
  self.hole.layer.masksToBounds = YES;
  nextLevelButton.hidden = YES;

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
  NSLog(@"touches Began");
  UITouch *touch = [touches anyObject];
  // turn user interaction off as swipe begins
  [self.view setUserInteractionEnabled:NO];
   
  // store point a touch began
  self.firstPoint = [touch locationInView:self.view];
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
 NSLog(@"touches Ended");
  
    counter++;
    movesLabel.text = [NSString stringWithFormat:@"%d" , 5];
    
 UITouch *touch = [touches anyObject];
  
 // store point a touch end
 self.lastPoint = [touch locationInView:self.view];
  
 // logic to calculate swipevector as distance between touch began and touch end
 CGPoint swipeVector = CGPointMake(self.lastPoint.x - self.firstPoint.x, self.lastPoint.y - self.firstPoint.y);
  
 // velocity of ball based off of swipe
 self.ballVelocityX = speedScale * swipeVector.x;
 self.ballVelocityY = speedScale * swipeVector.y;
  
 // move ball occurs multiple times at this sampling rate, until friction causes ball to stop
 self.gameTimer = [NSTimer scheduledTimerWithTimeInterval:.05 target:self selector:@selector(moveBall) userInfo:nil repeats:YES];
}

-(void)moveBall {
  // simulates friction by reducing velocity
  self.ballVelocityX = speedDamping * self.ballVelocityX;
  self.ballVelocityY = speedDamping * self.ballVelocityY;
   
  // this is the ball move
  self.ball.center = CGPointMake(self.ball.center.x + self.ballVelocityX, self.ball.center.y + self.ballVelocityY);
   
  // logic to calculate if ball and hole collide
  if (CGRectIntersectsRect(self.ball.frame, self.hole.frame)) {
    [self.gameTimer invalidate];
    [self.view setUserInteractionEnabled:YES];
    self.ball.center = CGPointMake(self.hole.center.x, self.hole.center.y);
    self.ball.alpha = 0.2;
    nextLevelButton.hidden = NO;
  }
   
  // if ball slows/stops turn off game timer and turn user interaction back on
  if(fabs(self.ballVelocityX) < stopSpeed && fabs(self.ballVelocityY) < stopSpeed) {
    [self.gameTimer invalidate];
    [self.view setUserInteractionEnabled:YES];
  }
    
    if (CGRectIntersectsRect(self.ball.frame, self.wall.frame)) {
    self.ballVelocityX = speedDamping * self.ballVelocityX * (-1);
    }
    if (CGRectIntersectsRect(self.ball.frame, self.wall2.frame)) {
    self.ballVelocityX = speedDamping * self.ballVelocityX * (-1);
    }
    if (CGRectIntersectsRect(self.ball.frame, self.wall3.frame)) {
    self.ballVelocityY = speedDamping * self.ballVelocityY * (-1);
    }
    if (CGRectIntersectsRect(self.ball.frame, self.wall4.frame)) {
    self.ballVelocityY = speedDamping * self.ballVelocityY * (-1);
    }
    if (CGRectIntersectsRect(self.ball.frame, self.wall5.frame)) {
    self.ballVelocityY = speedDamping * self.ballVelocityY * (-1);
    }
    if (CGRectIntersectsRect(self.ball.frame, self.sandPit.frame)) {
          self.ballVelocityX = speedDamping *  .2 * self.ballVelocityX;
        self.ballVelocityY = speedDamping * .2 * self.ballVelocityY;
    }
}



@end
