//
//  Oscilloscope.m
//  Oscilloscope
//
//  Created by Tobias Hillén on 2017-01-30.
//  Copyright © 2017 Tobias Hillén. All rights reserved.
//

#import "Oscilloscope.h"

@implementation Oscilloscope

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [NSTimer scheduledTimerWithTimeInterval:1.0f / 30.0f
                                         target:self
                                       selector:@selector(setNeedsDisplay)
                                       userInfo:nil
                                        repeats:YES];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGMutablePathRef linePath = CGPathCreateMutable();
    float midY = rect.size.height / 2;
    CGPathMoveToPoint(linePath, nil, 0, midY);
    
    double time = [[NSDate date] timeIntervalSince1970];
    
    for (float x = 0.0f; x < rect.size.width; x += 1.0f) {
        CGPathAddLineToPoint(linePath, nil, x, midY * 0.8 + sin(x * 0.1 + time) * self.amp + sin(x * 0.4) * 10);
    }
    
    UIBezierPath *path = [UIBezierPath bezierPathWithCGPath:linePath];
    [path stroke];
    
    
    
    /*
    //Circle
    UIBezierPath* circle = [UIBezierPath bezierPathWithOvalInRect:rect];
    [[UIColor redColor] setFill];
    [circle fill];
    
    //Square
    UIBezierPath* square = [UIBezierPath bezierPathWithRect:CGRectMake(rect.size.width / 2 - 10, rect.size.height / 2 - 10, 20, 20)];
    [[UIColor whiteColor] setStroke];
    [square stroke];
    
    //Triangle
    CGMutablePathRef trianglePath = CGPathCreateMutable();
    CGPathMoveToPoint(trianglePath, nil, rect.size.width / 2, 0);
    CGPathAddLineToPoint(trianglePath, nil, rect.size.width, rect.size.height);
    CGPathAddLineToPoint(trianglePath, nil, 0, rect.size.height);
    CGPathAddLineToPoint(trianglePath, nil, rect.size.width /2, 0);
    
    UIBezierPath *triangle = [UIBezierPath bezierPathWithCGPath:trianglePath];
    [[UIColor blackColor] setStroke];
    [triangle stroke];
     */
    
}


@end
