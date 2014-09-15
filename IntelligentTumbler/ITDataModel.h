//
//  ITDataModel.h
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 8. 5..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITDataModel : NSObject <NSURLConnectionDataDelegate>

+(id)getDataModel;
-(void)saveID:(NSString*)useremail withPassword:(NSString*)password;
-(BOOL)isExist:(NSString*)useremail;

@end
