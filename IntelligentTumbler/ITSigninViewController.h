//
//  ITSigninViewController.h
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 8. 5..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ITSigninViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (weak, nonatomic) IBOutlet UITextField *emailText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
@property (weak, nonatomic) IBOutlet UITextField *confirmText;

@end
