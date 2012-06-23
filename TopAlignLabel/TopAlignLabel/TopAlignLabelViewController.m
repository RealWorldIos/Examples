//
//  TopAlignLabelViewController.m
//  TopAlignLabel
//
//  Created by Weiran Ye on 5/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TopAlignLabelViewController.h"
#import "UILabel+TopAlign.h"

@interface TopAlignLabelViewController ()

@end

@implementation TopAlignLabelViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [theLabel topAlign];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
