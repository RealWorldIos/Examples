//
//  AddDynamicButtonsViewController.m
//  AddDynamicButtons
//
//  Created by Weiran Ye on 7/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddDynamicButtonsViewController.h"

@interface AddDynamicButtonsViewController ()

@end

@implementation AddDynamicButtonsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [myButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    myButton.frame = CGRectMake(40.0, 210.0, 240.0, 40.0);
    [myButton setTitle:@"I am a dynamic button" forState:UIControlStateNormal];
    [self.view addSubview:myButton];
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

- (void)buttonPressed:(id) obj
{
    NSLog(@"%@", obj);
}
@end
