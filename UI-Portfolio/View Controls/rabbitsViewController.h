//
//  rabbitsViewController.h
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 2/5/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface rabbitsViewController : UIViewController
@property (strong, nonatomic) NSTimer *gameTimer;
@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UIImageView *img2View;
@property (strong, nonatomic) IBOutlet UIImageView *img3View;
@property (strong, nonatomic) IBOutlet UIImageView *img4View;
@property (strong, nonatomic) IBOutlet UIImageView *img5View;

@end

NS_ASSUME_NONNULL_END
