//
//  DismissKeyboardViewController.m
//  DismissKeyboard
//
//  Created by Weiran Ye on 7/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DismissKeyboardViewController.h"

@interface DismissKeyboardViewController ()

@end

@implementation DismissKeyboardViewController
@synthesize myTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [myTextField setDelegate:self];
    
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
//    [self.view addGestureRecognizer:tap];
}

//-(void)dismissKeyboard
//{
//    [self.view endEditing:YES];
//}


- (void)viewDidUnload
{
    [self setMyTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.view endEditing:YES];
    return NO;
}

//- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
//    [self.view endEditing:YES];
//}

@end
