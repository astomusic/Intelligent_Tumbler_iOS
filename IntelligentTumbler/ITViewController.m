//
//  ITViewController.m
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 7. 15..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import "ITViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "ITDataModel.h"

@interface ITViewController ()

@end

@implementation ITViewController

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
    
    _loginScrollView.contentSize = CGSizeMake(_loginScrollView.frame.size.width * 3, _loginScrollView.frame.size.height);
    
    CGRect frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.size.height = self.loginScrollView.frame.size.height;
    frame.size.width = self.loginScrollView.frame.size.width;
    UIView *sub1 = [[UIView alloc] initWithFrame:frame];
    
    UILabel *subLabel = [[UILabel alloc] initWithFrame:CGRectMake(77, 300, 166, 28)];
    [subLabel setTextColor:[UIColor whiteColor]];
    [subLabel setBackgroundColor:[UIColor clearColor]];
    [subLabel setFont:[UIFont fontWithName: @"HelveticaNeue-Light" size: 21.0f]];
    [subLabel setText:@"Intelligent Tumbler"];
    [sub1 addSubview:subLabel];
    
    UIImage * subImage = [UIImage imageNamed: @"logo.png"];
    UIImageView * subImageView = [[UIImageView alloc] initWithImage: subImage];
    [subImageView setFrame:CGRectMake(107, 190, 105, 105)];
    [sub1 addSubview:subImageView];

    sub1.backgroundColor = [UIColor clearColor];
    [self.loginScrollView addSubview:sub1];

    //CGRect frame2;
    frame.origin.x = self.loginScrollView.frame.size.width;
    frame.origin.y = 0;
    frame.size.height = self.loginScrollView.frame.size.height;
    frame.size.width = self.loginScrollView.frame.size.width;
    UIView *sub2 = [[UIView alloc] initWithFrame:frame];
    
    UILabel *subLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(70, 300, 200, 28)];
    [subLabel2 setTextColor:[UIColor whiteColor]];
    [subLabel2 setBackgroundColor:[UIColor clearColor]];
    [subLabel2 setFont:[UIFont fontWithName: @"HelveticaNeue-Light" size: 21.0f]];
    [subLabel2 setText:@"You need more water!"];
    [sub2 addSubview:subLabel2];
    UIImage * subImage2 = [UIImage imageNamed: @"logo.png"];
    UIImageView * subImageView2 = [[UIImageView alloc] initWithImage: subImage2];
    [subImageView2 setFrame:CGRectMake(107, 190, 105, 105)];
    [sub2 addSubview:subImageView2];
    
    sub2.backgroundColor = [UIColor clearColor];
    [self.loginScrollView addSubview:sub2];
    
    frame.origin.x = self.loginScrollView.frame.size.width * 2;
    frame.origin.y = 0;
    frame.size.height = self.loginScrollView.frame.size.height;
    frame.size.width = self.loginScrollView.frame.size.width;
    UIView *sub3 = [[UIView alloc] initWithFrame:frame];
    
    UILabel *subLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(70, 300, 200, 28)];
    [subLabel3 setTextColor:[UIColor whiteColor]];
    [subLabel3 setBackgroundColor:[UIColor clearColor]];
    [subLabel3 setFont:[UIFont fontWithName: @"HelveticaNeue-Light" size: 21.0f]];
    [subLabel3 setText:@"Check your everyday"];
    [sub3 addSubview:subLabel3];
    UIImage * subImage3 = [UIImage imageNamed: @"logo.png"];
    UIImageView * subImageView3 = [[UIImageView alloc] initWithImage: subImage3];
    [subImageView3 setFrame:CGRectMake(107, 190, 105, 105)];
    [sub3 addSubview:subImageView3];
    
    sub3.backgroundColor = [UIColor clearColor];
    [self.loginScrollView addSubview:sub3];
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
