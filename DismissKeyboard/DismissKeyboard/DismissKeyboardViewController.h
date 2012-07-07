//
//  DismissKeyboardViewController.h
//  DismissKeyboard
//
//  Created by Weiran Ye on 7/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DismissKeyboardViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *myTextField;
@end
