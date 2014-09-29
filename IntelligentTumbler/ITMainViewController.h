//
//  ITMainViewController.h
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 9. 16..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PieView.h"

@interface ITMainViewController : UIViewController

@property (weak, nonatomic) IBOutlet PieView *pieView;
@property (weak, nonatomic) IBOutlet UILabel *counter;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UILabel *description;

@end
