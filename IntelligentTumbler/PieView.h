//
//  PieView.h
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 9. 28..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PieView : UIView

@property (nonatomic, strong) NSArray *sliceValues;

-(id)initWithSliceValues:(NSArray *)sliceValues;

@end