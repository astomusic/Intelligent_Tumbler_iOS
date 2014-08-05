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
@synthesize imageArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	_loginButton.layer.cornerRadius  = 5;
    _signupButton.layer.cornerRadius = 5;
    //1280,960
//    int pages = 3;
//    _loginScrollView.contentSize = CGSizeMake(1024,768 * pages);
//    _loginPageControl.numberOfPages = pages;
//    [self loadScrollViewWithPage:0];
    
    //Put the names of our image files in our array.
    imageArray = [[NSArray alloc] initWithObjects:@"a.png", @"b.png", @"c.png", nil];
    
    _loginScrollView.contentSize = CGSizeMake(_loginScrollView.frame.size.width * 3, _loginScrollView.frame.size.height);
    
//    CGRect frame;
//    frame.origin.x = self.loginScrollView.frame.size.width * 1;
//    frame.origin.y = 0;
//    frame.size = self.loginScrollView.frame.size;
//    [self.loginScrollView addSubview:[self.loginViewMain initWithFrame:frame]];
//
//    frame.origin.x = self.loginScrollView.frame.size.width * 2;
//    frame.origin.y = 0;
//    frame.size = self.loginScrollView.frame.size;
//    [self.loginScrollView addSubview:[self.loginViewSub initWithFrame:frame]];
//
    for (int i = 0; i < [imageArray count]; i++) {
        //We'll create an imageView object in every 'page' of our scrollView.
        CGRect frame;
        frame.origin.x = self.loginScrollView.frame.size.width * i+2;
        frame.origin.y = 0;
        frame.size = self.loginScrollView.frame.size;
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:i]];
        [self.loginScrollView addSubview:imageView];
    }

}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.loginScrollView.frame.size.width;
    int page = floor((self.loginScrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.loginPageControl.currentPage = page;
}

- (IBAction)loginAction:(id)sender
{
    NSLog(@"login");
}

- (IBAction)signupAction:(id)sender
{
    NSLog(@"signup");
}

- (IBAction)returned:(UIStoryboardSegue *)segue {
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
