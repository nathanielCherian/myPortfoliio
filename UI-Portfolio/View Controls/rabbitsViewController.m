//
//  rabbitsViewController.m
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 2/5/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

#import "rabbitsViewController.h"

@interface rabbitsViewController ()

@end

@implementation rabbitsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(rand() % 300,rand() % 300, 50, 50)];
    [imgView setImage:[UIImage imageNamed:@"rabbit.jpg"]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:imgView];
 /*
    UIImageView *img1View=[[UIImageView alloc]initWithFrame:CGRectMake(rand() % 300, rand() % 300, 50, 50)];
    [img1View setImage:[UIImage imageNamed:@"rabbit.jpg"]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:img1View];
    
    UIImageView *img2View=[[UIImageView alloc]initWithFrame:CGRectMake(rand() % 300, rand() % 300, 50, 50)];
    [img2View setImage:[UIImage imageNamed:@"rabbit.jpg"]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:img2View];
    
    UIImageView *img3View=[[UIImageView alloc]initWithFrame:CGRectMake(rand() % 300, rand() % 300, 50, 50)];
    [img3View setImage:[UIImage imageNamed:@"rabbit.jpg"]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:img3View];
    
    UIImageView *img4View=[[UIImageView alloc]initWithFrame:CGRectMake(rand() % 300, rand() % 300, 50, 50)];
    [img4View setImage:[UIImage imageNamed:@"rabbit.jpg"]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:img4View];
    
    UIImageView *img5View=[[UIImageView alloc]initWithFrame:CGRectMake(rand() % 300, rand() % 300, 50, 50)];
    [img5View setImage:[UIImage imageNamed:@"rabbit.jpg"]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:img5View];
    */
    
    self.gameTimer = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(moveWalls) userInfo:nil repeats:YES];
}


-(void)moveWalls {
    
    self.imgView.center = CGPointMake(self.imgView.center.x + (rand() % 20), self.imgView.center.y + (rand() % 20));
    
    NSLog(@"NIBVBA");
    
    
}




@end
