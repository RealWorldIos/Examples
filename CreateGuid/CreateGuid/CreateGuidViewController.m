//
//  CreateGuidViewController.m
//  CreateGuid
//
//  Created by Weiran Ye on 7/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CreateGuidViewController.h"

@interface CreateGuidViewController ()

@end

@implementation CreateGuidViewController
@synthesize guidLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setGuidLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)generateGuid:(id)sender {
    CFUUIDRef guid = CFUUIDCreate(kCFAllocatorDefault);
    NSString * guidStr = (__bridge_transfer NSString*)CFUUIDCreateString(kCFAllocatorDefault, guid);
    CFRelease(guid);
    guidLabel.text = guidStr;
}
@end
