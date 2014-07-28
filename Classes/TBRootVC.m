//
//  TBRootVC.m
//  TabBar
//
//  Created by T. A. Weerasooriya on 7/25/14.
//  Copyright (c) 2014 tulakshana. All rights reserved.
//

#import "TBRootVC.h"

#import "TBVC1.h"
#import "TBVC2.h"

@interface TBRootVC ()

@end

@implementation TBRootVC

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

- (IBAction)btnLoginTapped:(id)sender{
    UITabBarController *tabController = [[UITabBarController alloc]init];
    
    TBVC1 *barcodevc = [[TBVC1 alloc]initWithNibName:@"TBVC1" bundle:nil];
    UITabBarItem *itmbercode = [[UITabBarItem alloc] initWithTitle:@"Buy" image:[UIImage imageNamed:@"nav-buy.png"] tag:0];
    barcodevc.tabBarItem  = itmbercode;
    
    TBVC2 *locationvc = [[TBVC2 alloc]initWithNibName:@"TBVC2" bundle:nil];
    UITabBarItem *itmlocation = [[UITabBarItem alloc] initWithTitle:@"Outlet" image:[UIImage imageNamed:@"nav-outlet.png"] tag:1];
    
    locationvc.tabBarItem  = itmlocation;
    
    NSArray *tabs = [[NSArray alloc] initWithObjects:barcodevc,locationvc, nil];
    [tabController setViewControllers:tabs];
    
    [self presentViewController:tabController animated:TRUE completion:nil];
}

@end
