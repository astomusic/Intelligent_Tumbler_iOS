//
//  ITViewController.h
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 7. 15..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ITViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;
@property (weak, nonatomic) IBOutlet UIPageControl *loginPageControl;
@property (weak, nonatomic) IBOutlet UIScrollView *loginScrollView;

@end
