//
//  DismissKeyboardUIView.m
//  DismissKeyboard
//
//  Created by Weiran Ye on 7/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DismissKeyboardUIView.h"

@implementation DismissKeyboardUIView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *subview = [super hitTest:point withEvent:event];
    
    [self endEditing:YES];
    
    return subview;
}

@end
