//
//  ITDataModel.m
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 8. 5..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import "ITDataModel.h"

static ITDataModel *myModel = nil;

@implementation ITDataModel
{
    NSMutableDictionary* _loginData;
}

+ (id)getDataModel
{
    @synchronized(self) {
        if(myModel == nil)
            myModel = [[super alloc] init];
    }
    return myModel;
}
- (id)init
{
    self = [super init];
    if (self) {
//        NSString *aURLString = @"http://localhost:8080/";
//        NSURL *aURL = [NSURL URLWithString:aURLString];
//        NSURLRequest *aRequest = [NSMutableURLRequest requestWithURL:aURL];
//        NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:aRequest delegate:self startImmediately:YES];
//        NSLog(@"DATAMODEL INIT");
        
        _loginData = [[NSMutableDictionary alloc] init];
        NSLog(@"init data");
    }
    
    return self;
}

-(void)saveID:(NSString*)useremail withPassword:(NSString*)password
{
    [_loginData setObject:password forKey:useremail];
    NSLog(@"%@", _loginData);
    [[[UIAlertView alloc] initWithTitle:@"Signin Complete"
                                message:@"가입완료"
                               delegate:nil
                      cancelButtonTitle:@"OK"
                      otherButtonTitles:nil, nil] show];
}

-(BOOL)isExist:(NSString*)useremail
{
    if([_loginData objectForKey:useremail]) {
        return YES;
    } else {
        return NO;
    }
}

@end
