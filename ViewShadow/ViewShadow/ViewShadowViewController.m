//
//  ViewShadowViewController.m
//  ViewShadow
//
//  Created by Weiran Ye on 7/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewShadowViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewShadowViewController ()

@end

@implementation ViewShadowViewController
@synthesize myView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    myView.layer.shadowOffset = CGSizeMake(10, 10);
    myView.layer.shadowRadius = 5;
    myView.layer.shadowOpacity = 0.5;
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
