//
//  TBVC2.m
//  TabBar
//
//  Created by T. A. Weerasooriya on 7/25/14.
//  Copyright (c) 2014 tulakshana. All rights reserved.
//

#import "TBVC2.h"

#import "TBPopVC.h"

@interface TBVC2 ()

@end

@implementation TBVC2

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -

- (IBAction)btnPOPTapped:(id)sender{
    TBPopVC *popVC = [[TBPopVC alloc]initWithNibName:@"TBPopVC" bundle:nil];
    popVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:popVC animated:TRUE completion:nil];
}

@end
