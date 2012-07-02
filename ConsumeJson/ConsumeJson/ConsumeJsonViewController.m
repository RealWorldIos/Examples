//
//  ConsumeJsonViewController.m
//  ConsumeJson
//
//  Created by Weiran Ye on 7/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ConsumeJsonViewController.h"

@interface ConsumeJsonViewController ()

@end

@implementation ConsumeJsonViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [NSURL URLWithString:@"http://search.twitter.com/search.json?q=ios"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    if(data!=nil)
    {
        NSError *error = nil;
        id jsonResult = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        if(error==nil)
        {
            NSLog(@"%@", jsonResult);
        }
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
