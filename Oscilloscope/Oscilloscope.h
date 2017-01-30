//
//  Oscilloscope.h
//  Oscilloscope
//
//  Created by Tobias Hillén on 2017-01-30.
//  Copyright © 2017 Tobias Hillén. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface Oscilloscope : UIView

@property (nonatomic) IBInspectable float amp;
@property (nonatomic) IBInspectable float lineSize;
@property (nonatomic) IBInspectable UIColor* lineColor;

@end
