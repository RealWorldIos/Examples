//
//  ReachabilityViewController.m
//  Reachability
//
//  Created by Weiran Ye on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ReachabilityViewController.h"

#import "Reachability.h"

@interface ReachabilityViewController ()

@end

@implementation ReachabilityViewController
@synthesize ReachabilityLabel;
@synthesize ReachabilityNoWwanLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    Reachability* reach = [Reachability reachabilityWithHostname:@"www.apple.com"];
    
    reach.reachableBlock = ^(Reachability* reach)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            ReachabilityLabel.text = @"www.apple.com is Reachable";
        });
    };
    
    reach.unreachableBlock = ^(Reachability* reach)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            ReachabilityLabel.text = @"www.apple.com is Unreachable";
        });
    };
    
    [reach startNotifier];
    
    
    Reachability* reachNoWwan = [Reachability reachabilityWithHostname:@"www.apple.com"];
    
    reachNoWwan.reachableOnWWAN = NO;
    
    reachNoWwan.reachableBlock = ^(Reachability* reachNoWwan)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            ReachabilityNoWwanLabel.text = @"www.apple.com is Reachable (without Cellular)";
        });
    };
    
    reachNoWwan.unreachableBlock = ^(Reachability* reachNoWwan)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            ReachabilityNoWwanLabel.text = @"www.apple.com is Unreachable (without Cellular)";
        });
    };
    
    [reachNoWwan startNotifier];
}

- (void)viewDidUnload
{
    [self setReachabilityLabel:nil];
    [self setReachabilityNoWwanLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
