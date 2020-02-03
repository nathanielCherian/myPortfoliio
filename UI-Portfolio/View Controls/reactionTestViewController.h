//
//  reactionTestViewController.h
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 2/3/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface reactionTestViewController : UIViewController
@property (strong, nonatomic) NSTimer *gameTimer;
@property (strong, nonatomic) NSTimer *gameTimer2;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *gameLabel;
@property (weak, nonatomic) IBOutlet UIButton *clicked;
@property (weak, nonatomic) IBOutlet UIButton *firstClicked;



@end

NS_ASSUME_NONNULL_END
