//
//  InAppEmailViewController.h
//  InAppEmail
//
//  Created by Weiran Ye on 7/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface InAppEmailViewController : UIViewController <MFMailComposeViewControllerDelegate>
- (IBAction)sendFeedback:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *thankYouLabel;

@end
