//
//  NoPhoneLinkViewController.m
//  NoPhoneLink
//
//  Created by Weiran Ye on 7/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NoPhoneLinkViewController.h"

@interface NoPhoneLinkViewController ()

@end

@implementation NoPhoneLinkViewController
@synthesize webView1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSString *webContent = @"<meta name='format-detection' content='telephone=no'>A number: 1234567890";
    NSString *webContent = @"A number: 1234567890";
//    webView1.dataDetectorTypes = UIDataDetectorTypeNone;
    webView1.dataDetectorTypes = UIDataDetectorTypeAll ^ UIDataDetectorTypePhoneNumber;
    [webView1 loadHTMLString:webContent baseURL:nil];    
}

- (void)viewDidUnload
{
    [self setWebView1:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
