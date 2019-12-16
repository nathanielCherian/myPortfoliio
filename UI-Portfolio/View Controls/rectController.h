//
//  rectController.h
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 11/13/19.
//  Copyright © 2019 Hale, Andrew. All rights reserved.
//

#ifndef rectController_h
#define rectController_h

#import <UIKit/UIKit.h>

@interface rectController : UIViewController

@property(weak, nonatomic) IBOutlet UITextField *base;
@property(weak, nonatomic) IBOutlet UITextField *height;
@property (strong, nonatomic) IBOutlet UILabel *area;

@end

#endif /* rectController_h */
