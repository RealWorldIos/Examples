//
//  FitToContentTextViewViewController.m
//  FitToContentTextView
//
//  Created by Weiran Ye on 7/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FitToContentTextViewViewController.h"

@interface FitToContentTextViewViewController ()

@end

@implementation FitToContentTextViewViewController
@synthesize myTextView;

- (void)fitToContent:(UITextView *)textView
{
    CGRect frame = textView.frame;
    frame.size.height = textView.contentSize.height;
    textView.frame = frame;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [myTextView setDelegate:self];
    [self fitToContent:myTextView];
}

- (void)viewDidUnload
{
    [self setMyTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)textViewDidChange:(UITextView *)textView
{
    if(myTextView == textView)
    {
        [self fitToContent:textView];
    }
}

@end
