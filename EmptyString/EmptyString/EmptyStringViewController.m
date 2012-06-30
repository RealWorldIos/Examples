//
//  EmptyStringViewController.m
//  EmptyString
//
//  Created by Weiran Ye on 6/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmptyStringViewController.h"

@interface EmptyStringViewController ()

@end

@implementation EmptyStringViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString* emptyStr = @"     ";
    NSString* trimmedStr = [emptyStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet] ];
    if([trimmedStr length] == 0) {
        NSLog(@"Empty string detected.");
    }
    else NSLog(@"Not an empty string.");
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
