//
//  rouletteViewController.h
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 2/11/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

#import <UIKit/UIKit.h>



NS_ASSUME_NONNULL_BEGIN
#define DEGREES_TO_RADIANS(angle) (angle / 180.0 * M_PI)

@interface rouletteViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *ball;
@property (strong, nonatomic) IBOutlet UIImageView *chip;
@property (weak, nonatomic) IBOutlet UIButton *spinButton;
@property (weak, nonatomic) IBOutlet UIButton *redButton;
@property (weak, nonatomic) IBOutlet UIButton *blackButton;
@property (weak, nonatomic) IBOutlet UIButton *firButton;
@property (weak, nonatomic) IBOutlet UIButton *secButton;
@property (weak, nonatomic) IBOutlet UIButton *thirButton;
@property (weak, nonatomic) IBOutlet UIButton *fourButton;

@property (strong, nonatomic) NSTimer *gameTimer;

@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UILabel *balanceLabel;



@end

NS_ASSUME_NONNULL_END
