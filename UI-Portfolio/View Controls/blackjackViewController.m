//
//  blackjackViewController.m
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 2/6/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

#import "blackjackViewController.h"

@interface blackjackViewController ()

@end

@implementation blackjackViewController
@synthesize startButton, player1, player2, player3, player4, house1, house2;


int temp = 0;
int hitt = 0;
/*
int deckArray[52] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51}; */
int deckArray[52];
int deckValues[52] = {2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 14, 14, 14, 14};



- (void)viewDidLoad {
    [super viewDidLoad];
    for(int x = 0; x < 52; x++){
        deckArray[x] = x;
    }
    // Do any additional setup after loading the view.
    //NSString *png = @"14c.png";
    
    self.cards = [NSArray arrayWithObjects:@"2c.png", @"2d.png", @"2h.png", @"2s.png", @"3c.png", @"3d.png", @"3h.png", @"3s.png", @"4c.png", @"4d.png", @"4h.png", @"4s.png", @"5c.png", @"5d.png", @"5h.png", @"5s.png", @"6c.png", @"6d.png", @"6h.png", @"6s.png", @"7c.png", @"7d.png", @"7h.png", @"7s.png", @"8c.png", @"8d.png", @"8h.png", @"8s.png", @"9c.png", @"9d.png", @"9h.png", @"9s.png", @"10c.png", @"10d.png", @"10h.png", @"10s.png", @"11c.png", @"11d.png", @"11h.png", @"11s.png", @"12c.png", @"12d.png", @"12h.png", @"12s.png", @"13c.png", @"13d.png", @"13h.png", @"13s.png", @"14c.png", @"14d.png", @"14h.png", @"14s.png", nil];
    
    int n = sizeof(deckArray)/ sizeof(deckArray[0]);
    randomize(deckArray, n);
    
    

    
}

- (IBAction)startGame:(id)sender {
    
    startButton.hidden = YES;
    
    
    [player1 setImage:[UIImage imageNamed:self.cards[deckArray[temp]]]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:player1];
    moveUp();
    
    [player2 setImage:[UIImage imageNamed:self.cards[deckArray[temp]]]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:player2];
    moveUp();
    
    [house1 setImage:[UIImage imageNamed:@"cardBack.png"]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:house1];
    moveUp();
    
    [house2 setImage:[UIImage imageNamed:self.cards[deckArray[temp]]]];//if your images extension is .png than no need to write extension of an image..
    [self.view addSubview:house2];
    moveUp();

}

- (IBAction)hit:(id)sender {
    if(hitt == 0){
        [player3 setImage:[UIImage imageNamed:self.cards[deckArray[temp]]]];//if your images extension is .png than no need to write extension of an image..
        [self.view addSubview:player3];
        moveUp();
        hitt++;
    }else if(hitt == 1){
        [player4 setImage:[UIImage imageNamed:self.cards[deckArray[temp]]]];//if your images extension is .png than no need to write extension of an image..
        [self.view addSubview:player4];
        moveUp();
        hitt++;
    }
}







void randomize ( int arr[], int n )
{
    // Use a different seed value so that we don't get same
    // result each time we run this program
    srand ( time(NULL) );
  
    // Start from the last element and swap one by one. We don't
    // need to run for the first element that's why i > 0
    for (int i = n-1; i > 0; i--)
    {
        // Pick a random index from 0 to i
        int j = rand() % (i+1);
  
        // Swap arr[i] with the element at random index
        swap(&arr[i], &arr[j]);
    }
}

void swap (int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

void moveUp(){
    if(temp < 52){
    temp++;
    }
}




@end
