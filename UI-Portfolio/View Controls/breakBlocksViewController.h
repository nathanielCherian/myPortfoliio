//
//  breakBlocksViewController.h
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 1/29/20.
//  Copyright © 2020 Hale, Andrew. All rights reserved.
//

#import <UIKit/UIKit.h>
#define speedScale 0.20
#define speedDamping 0.90 // friction rate
#define stopSpeed 5.0


NS_ASSUME_NONNULL_BEGIN
NSTimer *ballTimer;
@interface breakBlocksViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *ball;
@property (strong, nonatomic) IBOutlet UIImageView *moveWall;
@property (strong, nonatomic) IBOutlet UIImageView *wall;
@property (strong, nonatomic) IBOutlet UIImageView *wall2;
@property (strong, nonatomic) IBOutlet UIImageView *wall3;
@property (nonatomic) CGPoint firstPoint;
@property (nonatomic) CGPoint lastPoint;
@property (strong, nonatomic) NSTimer *gameTimer;
@property (nonatomic) float wallVelocityX;
@property (nonatomic) float wallVelocityY;
@property (nonatomic) float balVelocityX;
@property (nonatomic) float balVelocityY;
@end

NS_ASSUME_NONNULL_END
