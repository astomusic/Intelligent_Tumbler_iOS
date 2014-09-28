//
//  PieSliceLayer.h
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 9. 28..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface PieSliceLayer : CALayer


@property (nonatomic) CGFloat startAngle;
@property (nonatomic) CGFloat endAngle;

@property (nonatomic, strong) UIColor *fillColor;
@property (nonatomic) CGFloat strokeWidth;
@property (nonatomic, strong) UIColor *strokeColor;
@end
