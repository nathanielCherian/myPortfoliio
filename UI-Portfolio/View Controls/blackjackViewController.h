//
//  blackjackViewController.h
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 2/6/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface blackjackViewController : UIViewController
@property (strong, nonatomic) NSArray *cards;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *hitButton;
@property (strong, nonatomic) IBOutlet UIImageView *player1;
@property (strong, nonatomic) IBOutlet UIImageView *player2;
@property (strong, nonatomic) IBOutlet UIImageView *player3;
@property (strong, nonatomic) IBOutlet UIImageView *player4;
@property (strong, nonatomic) IBOutlet UIImageView *house1;
@property (strong, nonatomic) IBOutlet UIImageView *house2;

@end

NS_ASSUME_NONNULL_END
