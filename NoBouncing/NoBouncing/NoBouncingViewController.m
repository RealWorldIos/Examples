//
//  NoBouncingViewController.m
//  NoBouncing
//
//  Created by Weiran Ye on 6/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NoBouncingViewController.h"

@interface NoBouncingViewController ()

@end

@implementation NoBouncingViewController
@synthesize myView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [myView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com/"]]];
    myView.scrollView.bounces = NO;
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
