//
//  RoundedCornerViewController.m
//  RoundedCorner
//
//  Created by Weiran Ye on 6/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RoundedCornerViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface RoundedCornerViewController ()

@end

@implementation RoundedCornerViewController
@synthesize myView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    myView.layer.cornerRadius = 10;
    myView.layer.masksToBounds = YES;
    
}

- (void)viewDidUnload
{
    [self setMyView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
