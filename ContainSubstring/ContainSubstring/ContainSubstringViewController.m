//
//  ContainSubstringViewController.m
//  ContainSubstring
//
//  Created by Weiran Ye on 6/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ContainSubstringViewController.h"

@interface ContainSubstringViewController ()

@end

@implementation ContainSubstringViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSString* str = @"Hello world";
//    if ([str rangeOfString:@"Hell"].location == NSNotFound) {
//        NSLog(@"Hell not found");
//    } else {
//        NSLog(@"Hell found");
//    }
    
    NSString* str = @"Hello world";
    if ([str rangeOfString:@"hell" options:NSCaseInsensitiveSearch].location == NSNotFound) {
        NSLog(@"hell not found");
    } else {
        NSLog(@"hell found");
    }
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
