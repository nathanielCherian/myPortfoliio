//
//  TranslatorViewController.h
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 1/16/20.
//  Copyright © 2020 Hale, Andrew. All rights reserved.
//

#import <UIKit/UIKit.h>

//NS_ASSUME_NONNULL_BEGIN

@interface TranslatorViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *translateString;
@property (weak, nonatomic) IBOutlet UILabel *pigLatLabel;
@property (weak, nonatomic) IBOutlet UILabel *shorthandLabel;

@end

//NS_ASSUME_NONNULL_END
