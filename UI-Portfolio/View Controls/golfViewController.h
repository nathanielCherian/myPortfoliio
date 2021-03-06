//
//  golfViewController.h
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 1/16/20.
//  Copyright © 2020 Hale, Andrew. All rights reserved.
//

#ifndef golfViewController_h
#define golfViewController_h
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
// These values simulate speed and friction
#define speedScale 0.20
#define speedDamping 0.90 // friction rate
#define stopSpeed 5.0
@interface golfViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *hole;
@property (strong, nonatomic) IBOutlet UIImageView *ball;
@property (strong, nonatomic) IBOutlet UIImageView *wall;
@property (strong, nonatomic) IBOutlet UIImageView *wall2;
@property (strong, nonatomic) IBOutlet UIImageView *wall3;
@property (strong, nonatomic) IBOutlet UIImageView *wall4;
@property (strong, nonatomic) IBOutlet UIImageView *wall5;
@property (strong, nonatomic) IBOutlet UIImageView *sandPit;
@property (weak, nonatomic) IBOutlet UILabel *movesLabel;
@property (weak, nonatomic) IBOutlet UIButton *nextLevelButton;
@property (nonatomic) CGPoint firstPoint;
@property (nonatomic) CGPoint lastPoint;
@property (nonatomic) float ballVelocityX;
@property (nonatomic) float ballVelocityY;
@property (strong, nonatomic) NSTimer *gameTimer;
@end
#endif /* golfController_h */
