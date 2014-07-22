//
//  ITViewController.m
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 7. 15..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import "ITViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ITViewController ()

@end

@implementation ITViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_loginButton.layer.cornerRadius  = 5;
    _signupButton.layer.cornerRadius = 5;
    //1280,960
    //_loginScrollView.contentSize = CGSizeMake(1280,960);
    
   
//    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
//    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
//    // Setting the swipe direction.
//    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
//    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
//    
//    // Adding the swipe gesture on image view
//    [_loginView addGestureRecognizer:swipeLeft];
//    [_loginView addGestureRecognizer:swipeRight];
    
}

- (void)handleSwipe:(UISwipeGestureRecognizer *)swipe {
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"Left Swipe");
    }
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"Right Swipe");
    }
    
}

- (IBAction)loginAction:(id)sender
{
    NSLog(@"login");
}

- (IBAction)signupAction:(id)sender
{
    NSLog(@"signup");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
