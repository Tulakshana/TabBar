//
//  TBPopVC.m
//  TabBar
//
//  Created by T. A. Weerasooriya on 7/25/14.
//  Copyright (c) 2014 tulakshana. All rights reserved.
//

#import "TBPopVC.h"

@interface TBPopVC ()

@end

@implementation TBPopVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    /*Uncomment this code to see the tab bar selection colour disappearing. This a bug in iOS7
    Steps to reproduce
     1. Uncomment the below code
     2. Run the app
     3. Select the right tab
     4. Tap on POP
     5. Tap on Done
    */
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hello" message:@"Test message" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//    [alert show];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hello" message:@"View did appear." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -

- (IBAction)btnDoneTapped:(id)sender{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

- (IBAction)btnMessageTapped:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hello" message:@"Test message" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
}

@end
