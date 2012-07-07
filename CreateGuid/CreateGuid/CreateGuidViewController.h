//
//  CreateGuidViewController.h
//  CreateGuid
//
//  Created by Weiran Ye on 7/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateGuidViewController : UIViewController
- (IBAction)generateGuid:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *guidLabel;

@end
