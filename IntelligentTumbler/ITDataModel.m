//
//  ITDataModel.m
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 8. 5..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import "ITDataModel.h"

@implementation ITDataModel

- (id)init
{
    self = [super init];
    if (self) {
        NSString *aURLString = @"http://localhost:8080/";
        NSURL *aURL = [NSURL URLWithString:aURLString];
        NSURLRequest *aRequest = [NSMutableURLRequest requestWithURL:aURL];
        NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:aRequest delegate:self startImmediately:YES];
        NSLog(@"DATAMODEL INIT");

    }
    
    return self;
}

@end
