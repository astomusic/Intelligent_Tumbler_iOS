//
//  ITMainViewController.m
//  IntelligentTumbler
//
//  Created by astomusic on 2014. 9. 16..
//  Copyright (c) 2014년 NEXT. All rights reserved.
//

#import "ITMainViewController.h"
#import "ITPieView.h"
#import <QuartzCore/QuartzCore.h>

@implementation ITMainViewController
{
    int tick;
    int endTick;
    NSTimer * myTimer;
}
@synthesize pieView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    //iTPieView = [[ITPieView alloc]init];
    NSMutableArray *initNum = [NSMutableArray array];
    [initNum addObject:@100];
    [initNum addObject:@0];
    [pieView setSliceValues:initNum];
    

    
}

- (void)viewDidAppear:(BOOL)animated
{
//    /* 움직이기 위한 대상 레이어를 만듭니다. */
//    CALayer *layer1 = [CALayer layer];
//    layer1.bounds = CGRectMake(0, 0, 20, 20);
//    layer1.position = CGPointMake(200, 200);
//    layer1.cornerRadius = 10;
//    layer1.backgroundColor = [UIColor redColor].CGColor;
//    [self.view.layer addSublayer:layer1]; // 만든 레이어를 뷰 레이어에 올립니다.
//    
//    /* 이동할 위치 지정 */
//    CGMutablePathRef path1 = CGPathCreateMutable();
//    CGPathMoveToPoint(path1,NULL,layer1.position.x, layer1.position.y);
//    CGPathAddLineToPoint(path1, NULL, layer1.position.x, layer1.position.y + 150);
//    CGPathAddLineToPoint(path1, NULL, layer1.position.x + 100, layer1.position.y + 100);
//    CGPathAddLineToPoint(path1, NULL, layer1.position.x, layer1.position.y + 0);
//    
//    /* 이동 애니메이션 작성 */
//    CAKeyframeAnimation *moveAni1 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
//    moveAni1.path = path1;
//    moveAni1.rotationMode = kCAAnimationRotateAuto;
//    moveAni1.duration = 5.0;
//    
//    /* 스케일 애니메이션 작성 */
//    CABasicAnimation *scalAni1 = [CABasicAnimation animationWithKeyPath:@"transform"];
//    scalAni1.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
//    scalAni1.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1.0)];
//    scalAni1.duration = 5.0;
//    
//    /* 투명 애니메이션 작성 */
//    CABasicAnimation *opacityAni1 = [CABasicAnimation animationWithKeyPath:@"opacity"];
//    opacityAni1.fromValue = [NSNumber numberWithFloat:1.0];
//    opacityAni1.toValue = [NSNumber numberWithFloat:0.1];
//    opacityAni1.duration = 5.0;
//    
//    /* 애니메이션 그룹 작성 */
//    CAAnimationGroup *group = [CAAnimationGroup animation];
//    group.animations = [NSArray arrayWithObjects:moveAni1, scalAni1, opacityAni1, nil];
//    group.duration = 5.0;
//    
//    [layer1 addAnimation:group forKey:nil]; //레이어에 그룹애니메이션 적용
}
//{
//    [super viewDidAppear:animated];
//    /* 움직이기 위한 대상 레이어를 만듭니다. */
//    CALayer *layer1 = [CALayer layer];
//    layer1.bounds = CGRectMake(0, 0, 300, 50);
//    layer1.position = CGPointMake(0, 400);
//    layer1.cornerRadius = 0;
//    layer1.backgroundColor = [UIColor blackColor].CGColor;
//    [self.view.layer addSublayer:layer1]; // 만든 레이어를 뷰 레이어에 올립니다.
//    
//    /* 이동할 위치 지정 */
//    CGPoint pStart = CGPointMake(0, 400);
//    CGPoint pEnd = CGPointMake(100,400);
//    
//    /* 애니메이션 작성 */
//    CABasicAnimation *ani = [CABasicAnimation animationWithKeyPath:@"position"];
//    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    ani.fromValue = [NSValue valueWithCGPoint:pStart];
//    ani.toValue = [NSValue valueWithCGPoint:pEnd];
//    
//    ani.repeatCount = 10;
//    ani.duration = 10.0;
//    [layer1 addAnimation:ani forKey:@"position"]; // 애니메이션을 원하는 레이어에 설정합니다.
//    
//}
- (IBAction)animatePie:(id)sender {
    NSLog(@"button!");
    //int counter = 100;
    //[iTPieView setPieValue:counter];
    
    
    NSMutableArray *randomNumbers = [NSMutableArray array];
	int rand1 = 1 + rand() % 100;
    int rand2 = 1 + rand() % 100;
    [randomNumbers addObject:[NSNumber numberWithInt:rand1]];
    [randomNumbers addObject:[NSNumber numberWithInt:rand2]];
    
    endTick = (rand2*2000) / (rand1+rand2);
    NSLog(@"%d %d %d", rand2, rand1, endTick);
    tick = 0;
    
    myTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(counterAnimation:) userInfo:nil repeats:YES];
    
	//pieView.sliceValues = randomNumbers;
    [pieView setSliceValues:randomNumbers];
    
    [self textAnimation];

}

-(void) onLableAnimateTick:(NSTimer*)timer{
    // put your animation code here
    
    _counter.text = [NSString stringWithFormat:@"%d%%",tick];
    
    if(tick < endTick) {
        tick++;
    }

    
}

-(void) counterAnimation:(NSTimer*)timer{
    // Add transition (must be called after myLabel has been displayed)
    CATransition *animation = [CATransition animation];
    animation.duration = 0.1;
    animation.type = kCATransitionFade;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [_counter.layer addAnimation:animation forKey:@"changeTextTransition"];
    
    // Change the text
    _counter.text = [NSString stringWithFormat:@"%d ml", tick];
    int gap = endTick / 10;
    if(tick < endTick) {
        tick += gap;
    } else {
        [myTimer invalidate];
    }
}

-(void) textAnimation {
    CATransition *animation = [CATransition animation];
    animation.duration = 0.1;
    animation.type = kCATransitionFade;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [_textLabel.layer addAnimation:animation forKey:@"changeTextTransition"];
    [_textLabel setFont:[UIFont fontWithName: @"HelveticaNeue-Light" size: 21.0f]];
    [_textLabel setFrame:CGRectMake(95, 205, 200, 28)];
    [_textLabel setTextColor:[UIColor whiteColor]];
    _textLabel.text = @"You got";
    
    [_counter setFrame:CGRectMake(70, 240, 200, 28)];
    
    [_description.layer addAnimation:animation forKey:@"changeTextTransition"];
    [_description setFont:[UIFont fontWithName: @"HelveticaNeue-Light" size: 19.0f]];
    [_description setFrame:CGRectMake(60, 430, 500, 50)];
    [_description setTextColor:[UIColor whiteColor]];
    _description.numberOfLines = 0;
    
//    CGSize labelSize = [_description.text sizeWithFont:_description.font
//                              constrainedToSize:_description.frame.size
//                                  lineBreakMode:_description.lineBreakMode];
    
    _description.text = [NSString stringWithFormat:@"Need more %dml water", 2000-endTick];
    
}


@end
