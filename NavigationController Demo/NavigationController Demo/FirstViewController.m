//
//  FirstViewController.m
//  NavigationController Demo
//
//  Created by Shreekant Pawar on 29/01/13.
//  Copyright (c) 2013 Suniket Wagh. All rights reserved.
//

#import "FirstViewController.h"
#import "ColorViewController.h"



@interface FirstViewController ()

@end

@implementation FirstViewController

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
    
    self.title = @"Three Colors";
	
	UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithTitle:@"Colors" style:UIBarButtonItemStylePlain target:nil action:nil];
	[self.navigationItem	 setBackBarButtonItem:barButton];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)redAction:(id)sender {
    
    ColorViewController *colView = [[ColorViewController alloc] init];
	
	[colView setColorFromName:@"Red"];
	[self.navigationController pushViewController:colView animated:TRUE];

}

- (IBAction)greenAction:(id)sender {
    
	ColorViewController *colView = [[ColorViewController alloc] init];
	
	[colView setColorFromName:@"Green"];
	[self.navigationController pushViewController:colView animated:TRUE];
}

- (IBAction)blueAction:(id)sender {
    
    ColorViewController *colView = [[ColorViewController alloc] init];
	
	[colView setColorFromName:@"Blue"];
	[self.navigationController pushViewController:colView animated:TRUE];
}
@end
