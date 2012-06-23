//
//  UILabel+TopAlign.m
//  TopAlignLabel
//
//  Created by Weiran Ye on 5/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UILabel+TopAlign.h"

@implementation UILabel (TopAlign)

-(void) topAlign
{
    //note the original width before size to fit
    CGRect originalFrame = self.frame;
    
    //fit to the height and width
    [self sizeToFit];
    
    //get back the full width
    CGRect newFrame = self.frame;
    newFrame = CGRectMake(newFrame.origin.x, newFrame.origin.y, originalFrame.size.width, newFrame.size.height);
    self.frame = newFrame;
}
@end
