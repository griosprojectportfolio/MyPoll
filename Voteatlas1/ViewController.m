//
//  ViewController.m
//  Voteatlas1
//
//  Created by GrepRuby1 on 16/12/14.
//  Copyright (c) 2014 Voteatlas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];

    self.navigationController.navigationBarHidden = YES;
    btnSignIn.layer.cornerRadius = 4.0;

    txtFldEmail.delegate = self;
    txtFldPassword.delegate = self;
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {

        //[textField becomeFirstResponder];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {

    CGRect frame = self.view.frame;
    frame.origin.y = frame.origin.y - 200;
    self.view.frame = frame;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {//Text Field Delegate

    [textField resignFirstResponder];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {

    CGRect frame = self.view.frame;
    frame.origin.y = frame.origin.y + 200;
    self.view.frame = frame;
}
@end
