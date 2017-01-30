//
//  Oscilloscope.m
//  Oscilloscope
//
//  Created by Tobias Hillén on 2017-01-30.
//  Copyright © 2017 Tobias Hillén. All rights reserved.
//

#import "Oscilloscope.h"

@implementation Oscilloscope


- (void)drawRect:(CGRect)rect {
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
    
}


@end
