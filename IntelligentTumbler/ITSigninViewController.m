//
//  ITSigninViewController.m
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 8. 5..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import "ITSigninViewController.h"
#import "ITDataModel.h"

@interface ITSigninViewController ()

@end

@implementation ITSigninViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _backButton.layer.cornerRadius  = 5;
    _submitButton.layer.cornerRadius = 5;
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

- (IBAction)backButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)submitButton:(id)sender {
    NSLog(@"submit");
    ITDataModel* model = [ITDataModel getDataModel];

    if([model isExist:_emailText.text]){
        [[[UIAlertView alloc] initWithTitle:@"Signin Fail"
                                    message:@"존재하는 아이디입니다"
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil, nil] show];
        return;
    }
    
    if([_passwordText.text isEqualToString:_confirmText.text]){
        [model saveID:_emailText.text withPassword:_passwordText.text];
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        [[[UIAlertView alloc] initWithTitle:@"Signin Fail"
                                    message:@"비밀번호가 일치하지 않습니다"
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil, nil] show];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
