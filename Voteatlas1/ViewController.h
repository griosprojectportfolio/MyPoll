//
//  ViewController.h
//  Voteatlas1
//
//  Created by GrepRuby1 on 16/12/14.
//  Copyright (c) 2014 Voteatlas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {

    IBOutlet UIButton *btnSignIn;
    IBOutlet UITextField *txtFldEmail;
    IBOutlet UITextField *txtFldPassword;
}

@end
