//
//  XJFHUD.m
//  XJFHUDDemo
//
//  Created by apple on 17/2/13.
//  Copyright © 2017年 xjf. All rights reserved.
//

#import "XJFHUD.h"
#define RGBA(r, g, b, a)    [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface XJFHUD () <CAAnimationDelegate>

@property (nonatomic,strong)  UIView *hudView;

@end


@implementation XJFHUD

- (UIView *)hudView {
    if (_hudView == nil) {
        _hudView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 98, 98)];
        _hudView.backgroundColor = RGBA(255, 255, 255, 1);
        _hudView.layer.cornerRadius = 10;
        _hudView.clipsToBounds = YES;
    }
    return _hudView;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self = [[XJFHUD alloc] initWithFrame:[UIApplication sharedApplication].keyWindow.frame];
//        self.backgroundColor = [UIColor whiteColor];
//        [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dissMiss)]];
    }
    return self;
}

- (void)showInView:(UIView *)view {
  
    
    [self.hudView.layer.sublayers makeObjectsPerformSelector:@selector(removeFromSuperlayer)];

    self.hudView.center = [UIApplication sharedApplication].keyWindow.center;
    
    [view addSubview:self];
    
    [self addSubview:self.hudView];
    
    [self firstAnimationStart];
}

- (void)firstAnimationStart {

    [self.hudView.layer.sublayers makeObjectsPerformSelector:@selector(removeFromSuperlayer)];
    
    CGFloat startX = 60;
    CGFloat startY = 60;
    
    CAShapeLayer *nameLayer = [CAShapeLayer layer];
    UIBezierPath *namePath = [UIBezierPath bezierPath];
    
    [namePath moveToPoint:CGPointMake(startX-7, startY)];
    [namePath addLineToPoint:CGPointMake(startX, startY)];


    
    CAShapeLayer *nameLayer1 = [CAShapeLayer layer];
    UIBezierPath *namePath1 = [UIBezierPath bezierPath];
    
    [namePath1 moveToPoint:CGPointMake(startX-7, startY)];
    [namePath1 addLineToPoint:CGPointMake(startX-10.5, startY-6.5)];

    
    
    
    CAShapeLayer *nameLayer2 = [CAShapeLayer layer];
    UIBezierPath *namePath2 = [UIBezierPath bezierPath];
    [namePath2 moveToPoint:CGPointMake(startX-6, startY-13)];
    [namePath2 addLineToPoint:CGPointMake(startX, startY)];

    CAShapeLayer *nameLayer3 = [CAShapeLayer layer];
    UIBezierPath *namePath3 = [UIBezierPath bezierPath];
    [namePath3 moveToPoint:CGPointMake(startX-6, startY-13)];
    [namePath3 addLineToPoint:CGPointMake(startX, startY-21)];

    CAShapeLayer *nameLayer4 = [CAShapeLayer layer];
    UIBezierPath *namePath4 = [UIBezierPath bezierPath];
    [namePath4 moveToPoint:CGPointMake(startX-7, startY-21)];
    [namePath4 addLineToPoint:CGPointMake(startX, startY-21)];

    CAShapeLayer *nameLayer5 = [CAShapeLayer layer];
    UIBezierPath *namePath5 = [UIBezierPath bezierPath];
    [namePath5 moveToPoint:CGPointMake(startX-12.5, startY-13.5)];
    [namePath5 addLineToPoint:CGPointMake(startX-7, startY-21)];
    
    CAShapeLayer *nameLayer6 = [CAShapeLayer layer];
    UIBezierPath *namePath6 = [UIBezierPath bezierPath];
    [namePath6 moveToPoint:CGPointMake(startX-19, startY-21)];
    [namePath6 addLineToPoint:CGPointMake(startX-12.5, startY-19)];

    CAShapeLayer *nameLayer7 = [CAShapeLayer layer];
    UIBezierPath *namePath7 = [UIBezierPath bezierPath];
    [namePath7 moveToPoint:CGPointMake(startX-12.5, startY-19)];
    [namePath7 addLineToPoint:CGPointMake(startX-19, startY-21)];
    
    CAShapeLayer *nameLayer8 = [CAShapeLayer layer];
    UIBezierPath *namePath8 = [UIBezierPath bezierPath];
    [namePath8 moveToPoint:CGPointMake(startX-19, startY)];
    [namePath8 addLineToPoint:CGPointMake(startX-12.5, startY)];
    
    CAShapeLayer *nameLayer9 = [CAShapeLayer layer];
    UIBezierPath *namePath9 = [UIBezierPath bezierPath];
    [namePath9 moveToPoint:CGPointMake(startX-19, startY)];
    [namePath9 addLineToPoint:CGPointMake(startX-19, startY-10)];
    
    CAShapeLayer *nameLayer10 = [CAShapeLayer layer];
    UIBezierPath *namePath10 = [UIBezierPath bezierPath];
    [namePath10 moveToPoint:CGPointMake(startX-19, startY-21)];
    [namePath10 addLineToPoint:CGPointMake(startX-19, startY-10)];
    
    CAShapeLayer *nameLayer11 = [CAShapeLayer layer];
    UIBezierPath *namePath11 = [UIBezierPath bezierPath];
    [namePath11 moveToPoint:CGPointMake(startX-12.5, startY)];
    [namePath11 addLineToPoint:CGPointMake(startX-12.5, startY-4)];
    [namePath11 addLineToPoint:CGPointMake(startX-10.5, startY-6.5)];
    
    NSTimeInterval duration = 0.3;
    
    [self addlayer:nameLayer path:namePath duration:duration isFina:NO];
    [self addlayer:nameLayer1 path:namePath1 duration:duration isFina:NO];
    [self addlayer:nameLayer2 path:namePath2 duration:duration isFina:NO];
    [self addlayer:nameLayer3 path:namePath3 duration:duration isFina:NO];
    [self addlayer:nameLayer4 path:namePath4 duration:duration isFina:NO];
    [self addlayer:nameLayer5 path:namePath5 duration:duration isFina:NO];
    [self addlayer:nameLayer6 path:namePath6 duration:duration isFina:NO];
    [self addlayer:nameLayer7 path:namePath7 duration:duration isFina:NO];
    [self addlayer:nameLayer8 path:namePath8 duration:duration isFina:NO];
    [self addlayer:nameLayer9 path:namePath9 duration:duration isFina:NO];
    [self addlayer:nameLayer10 path:namePath10 duration:duration isFina:NO];
    [self addlayer:nameLayer11 path:namePath11 duration:duration isFina:YES];

}

- (void)addlayer:(CAShapeLayer *)layer path:(UIBezierPath *)path duration:(NSTimeInterval)duration isFina:(BOOL)isFina{
    
    layer.path = path.CGPath;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = UIColorFromRGB(0x8300fe).CGColor;
    layer.lineWidth = 1;
    
    [self.hudView.layer addSublayer:layer];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fromValue = @(0);
    animation.toValue = @(1);
    animation.duration = duration;
    if (isFina) {
        animation.delegate = self;
        [animation setValue:@"first" forKey:@"AnimationKey"];
    }
    
    [layer addAnimation:animation forKey:nil];
    


}

- (void)secondAnimationStart {
    CGFloat startX = 60;
    CGFloat startY = 60;
    
    [self.hudView.layer.sublayers makeObjectsPerformSelector:@selector(removeFromSuperlayer)];

    
    CAShapeLayer *nameLayer = [CAShapeLayer layer];
    UIBezierPath *namePath = [UIBezierPath bezierPath];
    
    [namePath moveToPoint:CGPointMake(startX-19, startY-21)];
    
    [namePath addLineToPoint:CGPointMake(startX-19, startY)];
    [namePath addLineToPoint:CGPointMake(startX-12.5, startY)];
    [namePath addLineToPoint:CGPointMake(startX-12.5, startY-4)];
    [namePath addLineToPoint:CGPointMake(startX-10.5, startY-6.5)];
    [namePath addLineToPoint:CGPointMake(startX-7, startY)];
    [namePath addLineToPoint:CGPointMake(startX, startY)];
    [namePath addLineToPoint:CGPointMake(startX-6, startY-13)];
    [namePath addLineToPoint:CGPointMake(startX, startY-21)];
    [namePath addLineToPoint:CGPointMake(startX-7, startY-21)];
    [namePath addLineToPoint:CGPointMake(startX-12.5, startY-13.5)];
    [namePath addLineToPoint:CGPointMake(startX-12.5, startY-19)];
    [namePath addLineToPoint:CGPointMake(startX-19, startY-21)];
    
    
    nameLayer.path = namePath.CGPath;
    nameLayer.fillColor = [UIColor clearColor].CGColor;
    nameLayer.strokeColor = UIColorFromRGB(0x8300fe).CGColor;
    nameLayer.lineWidth = 1;
    
    [self.hudView.layer addSublayer:nameLayer];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fromValue = @(1);
    animation.toValue = @(0);
    animation.duration = 1.5;
    animation.beginTime = CACurrentMediaTime()+0.4;
    animation.delegate = self;

    
    [animation setValue:@"second" forKey:@"AnimationKey"];
    

    [nameLayer addAnimation:animation forKey:nil];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
   
    if (flag) {
        if ([[anim valueForKey:@"AnimationKey"]isEqualToString:@"first"]) {
            [self secondAnimationStart];
        } else if ([[anim valueForKey:@"AnimationKey"]isEqualToString:@"second"]){
            [self firstAnimationStart];
        }
    }
    

}

- (void)dissMiss {
    [self.hudView.layer.sublayers makeObjectsPerformSelector:@selector(removeAllAnimations)];

    [self removeFromSuperview];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
