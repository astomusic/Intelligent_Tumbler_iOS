//
//  ITPieView.m
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 9. 26..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import "ITPieView.h"

@implementation ITPieView
{
    int _value;
    CALayer *_containerLayer;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
		_containerLayer = [CALayer layer];
        [self.layer addSublayer:_containerLayer];
    }
	
    return self;
}

-(void)setPieValue:(int)value
{
    _value = value;
    NSLog(@"%d",_value);
}
@end
