//
//  CustomFontViewController.m
//  CustomFont
//
//  Created by Weiran Ye on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomFontViewController.h"

@interface CustomFontViewController ()

@end

@implementation CustomFontViewController
@synthesize fontLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    fontLabel.font = [UIFont fontWithName:@"the beautiful ones" size:80.0];
}

- (void)viewDidUnload
{
    [self setFontLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
