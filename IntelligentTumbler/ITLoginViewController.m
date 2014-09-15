//
//  ITLoginViewController.m
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 9. 13..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import "ITLoginViewController.h"

@implementation ITLoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _backButton.layer.cornerRadius  = 5;
    _loginButton.layer.cornerRadius = 5;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard:)];
    [self.view addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissKeyboard:(UITapGestureRecognizer*)reg
{
    [self.view endEditing:YES];
}

- (IBAction)login:(id)sender {
}

- (IBAction)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
