//
//  InAppEmailViewController.m
//  InAppEmail
//
//  Created by Weiran Ye on 7/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "InAppEmailViewController.h"

@interface InAppEmailViewController ()

@end

@implementation InAppEmailViewController
@synthesize thankYouLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setThankYouLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)sendFeedback:(id)sender {
    if([MFMailComposeViewController canSendMail]){
        MFMailComposeViewController *controller = [[MFMailComposeViewController alloc] init];
        controller.mailComposeDelegate = self;
        [controller setSubject:@"User feedback from InAppEmail"];
        [controller setToRecipients:[NSArray arrayWithObject:@"somebody@myDomain.com"]];
        [self presentViewController:controller animated:YES completion:nil];
    }
    else {
        thankYouLabel.text = @"Your device doesn't send email.";
        thankYouLabel.hidden = NO;
    }
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    if(result == MFMailComposeResultSent)
    {
        thankYouLabel.hidden = NO;
    }
    [self dismissModalViewControllerAnimated:YES];
}
@end
