//
//  rouletteViewController.m
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 2/11/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

#import "rouletteViewController.h"

@interface rouletteViewController ()

@end

@implementation rouletteViewController
@synthesize ball, infoLabel, chip, spinButton, balanceLabel;

    

float x = 0;
int balanceDisplayed = 100;
int fBalance = 100;
int localCoins = 0;
int betCoins = 0;
int redplat = 0;
int blackplat = 0;
int greenplat = 0;


- (void)viewDidLoad {
    [super viewDidLoad];
    long random;
    x = 0;
    
    balanceLabel.text = [NSString stringWithFormat:@"%d", balanceDisplayed];
}

- (IBAction)twentyFive:(id)sender {
    [self betValidator:25];
}

- (IBAction)fifty:(id)sender {
    [self betValidator:50];
}

- (IBAction)hundo:(id)sender {
    [self betValidator:100];
}

- (IBAction)twohundo:(id)sender {
    [self betValidator:200];
}

-(void)betValidator:(int)buttonVal{
    
    if (fBalance - buttonVal >= 0) {
        fBalance = fBalance - buttonVal;
        localCoins = localCoins + buttonVal;
    } else{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ALERT" message:@"Insufficent balance" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *actionOK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction*  _Nonnull action){
        }];
        [alert addAction:actionOK];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

- (IBAction)redPlate:(id)sender {
    redplat = redplat + localCoins;
    NSString *string = [NSString stringWithFormat:@"%d", redplat];
    [self.redButton setTitle:string forState:UIControlStateNormal];
    localCoins = 0;
    balanceDisplayed = fBalance;
    balanceLabel.text = [NSString stringWithFormat:@"%d", balanceDisplayed];
}

- (IBAction)blackPlate:(id)sender {
    blackplat = blackplat + localCoins;
    NSString *string = [NSString stringWithFormat:@"%d", blackplat];
    [self.blackButton setTitle:string forState:UIControlStateNormal];
    localCoins = 0;
    balanceDisplayed = fBalance;
    balanceLabel.text = [NSString stringWithFormat:@"%d", balanceDisplayed];
}

- (IBAction)greenPlate:(id)sender {
    greenplat = greenplat + localCoins;
    NSString *string = [NSString stringWithFormat:@"%d", greenplat];
    [self.greenButton setTitle:string forState:UIControlStateNormal];
    localCoins = 0;
    balanceDisplayed = fBalance;
    balanceLabel.text = [NSString stringWithFormat:@"%d", balanceDisplayed];
}






int randomInt;
int randomDegrees;
int choice;
int rouletteHole, color; // 0 = red 1 = black 3 = green

- (IBAction)spin:(id)sender {
    spinButton.hidden = YES;
    x = 0;
    randomInt = rand() % 37;
    randomDegrees = randomInt * 9.7297;
    randomDegrees = randomDegrees + 720;
    self.gameTimer = [NSTimer scheduledTimerWithTimeInterval:.0035 target:self selector:@selector(rotateImage) userInfo:nil repeats:YES];
    
}


- (void)rotateImage{
    if(x <= randomDegrees){
    x = x + 1;
    //NSLog(@"%f", x);
    ball.transform = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(x));
    }else{
        rouletteValidator();
       [self.gameTimer invalidate];
        NSLog(@"%d", rouletteHole);
        if (color == 0) {
            infoLabel.text = [NSString stringWithFormat:@"RED WINS"];
            fBalance = fBalance + (2 * redplat);
            balanceDisplayed = fBalance;
            balanceLabel.text = [NSString stringWithFormat:@"%d", balanceDisplayed];
            redplat = 0;
            blackplat = 0;
            greenplat = 0;
            [self.redButton setTitle:@"" forState:UIControlStateNormal];
            [self.blackButton setTitle:@"" forState:UIControlStateNormal];
            [self.greenButton setTitle:@"" forState:UIControlStateNormal];


        } else if (color == 1){
        infoLabel.text = [NSString stringWithFormat:@"BLACK WINS"];
            fBalance = fBalance + (2 * blackplat);
            balanceDisplayed = fBalance;
            balanceLabel.text = [NSString stringWithFormat:@"%d", balanceDisplayed];
            redplat = 0;
            blackplat = 0;
            greenplat = 0;
            [self.redButton setTitle:@"" forState:UIControlStateNormal];
            [self.blackButton setTitle:@"" forState:UIControlStateNormal];
            [self.greenButton setTitle:@"" forState:UIControlStateNormal];
            
        } else if (color == 2){
        infoLabel.text = [NSString stringWithFormat:@"GREEN WINS"];
            fBalance = fBalance + (35 * greenplat);
            balanceDisplayed = fBalance;
            balanceLabel.text = [NSString stringWithFormat:@"%d", balanceDisplayed];
            redplat = 0;
            blackplat = 0;
            greenplat = 0;
            [self.redButton setTitle:@"" forState:UIControlStateNormal];
            [self.blackButton setTitle:@"" forState:UIControlStateNormal];
            [self.greenButton setTitle:@"" forState:UIControlStateNormal];
        }
        spinButton.hidden = NO;
    }
    
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *aTouch = [touches anyObject];
    
    
    /*
    CGPoint location = [aTouch locationInView:self.view];
    if(CGRectContainsPoint(self.chip.frame,location)) {
        [UIView beginAnimations:@"Dragging A DraggableView" context:nil];
        self.chip.center = location;
        [UIView commitAnimations];
        self.chip.alpha = 1;

    }else {
    }
     */
}








void rouletteValidator(){
    switch (randomInt) {
        case 0:
            rouletteHole = 28;            color = 1;
            break;

            case 1:
                rouletteHole = 12;            color = 0;

            break;

            case 2:
                rouletteHole = 35;            color = 1;

            break;

            case 3:
                rouletteHole = 3;            color = 0;

            break;

            case 4:
                rouletteHole = 26;            color = 1;

            break;

            case 5:
                rouletteHole = 0;            color = 3;

            break;

            case 6:
                rouletteHole = 32;            color = 0;

            break;

            case 7:
                rouletteHole = 15;            color = 1;
            break;

            case 8:
                rouletteHole = 19;            color = 0;

            break;

            case 9:
                rouletteHole = 4;            color = 1;
            break;

            case 10:
                rouletteHole = 21;            color = 0;

            break;

            case 11:
                rouletteHole = 2;            color = 1;
            break;

            case 12:
                rouletteHole = 25;            color = 0;

            break;

            case 13:
                rouletteHole = 17;            color = 1;
            break;

            case 14:
                rouletteHole = 34;            color = 0;

            break;

            case 15:
                rouletteHole = 6;            color = 1;
            break;

            case 16:
                rouletteHole = 21;            color = 0;

            break;

            case 17:
                rouletteHole = 27;            color = 1;
            break;

            case 18:
                rouletteHole = 13;            color = 0;

            break;

            case 19:
                rouletteHole = 36;            color = 1;
            break;

            case 20:
                rouletteHole = 11;            color = 0;

            break;

            case 21:
                rouletteHole = 30;            color = 1;
            break;

            case 22:
                rouletteHole = 8;            color = 0;

            break;

            case 23:
                rouletteHole = 10;            color = 1;
            break;

            case 24:
                rouletteHole = 5;            color = 0;

            break;

            case 25:
                rouletteHole = 24;            color = 1;
            break;

            case 26:
                rouletteHole = 16;            color = 0;

            break;

            case 27:
                rouletteHole = 33;            color = 1;
            break;

            case 28:
                rouletteHole = 1;            color = 0;

            break;

            case 29:
                rouletteHole = 20;            color = 1;
            break;

            case 30:
                rouletteHole = 14;            color = 0;

            break;

            case 31:
                rouletteHole = 31;            color = 1;
            break;

            case 32:
                rouletteHole = 9;            color = 0;

            break;

            case 33:
                rouletteHole = 22;            color = 1;
            break;

            case 34:
                rouletteHole = 18;            color = 0;

            break;

            case 35:
                rouletteHole = 29;            color = 1;
            break;
            case 36:
                rouletteHole = 7;            color = 0;

            break;
        default:
            
            break;
    }
}





@end
