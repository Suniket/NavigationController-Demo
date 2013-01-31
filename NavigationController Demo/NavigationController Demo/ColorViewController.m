//
//  ColorViewController.m
//  NavigationController Demo
//
//  Created by Shreekant Pawar on 29/01/13.
//  Copyright (c) 2013 Suniket Wagh. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

@end

@implementation ColorViewController
@synthesize color;

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
	self.view.backgroundColor = self.color;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setColorFromName:(NSString *)colorName
{
	self.title = [colorName capitalizedString];
	NSString *lowercaseColorName = [colorName lowercaseString];
	NSString *selectorName = [lowercaseColorName stringByAppendingString:@"Color"];
	SEL selector = NSSelectorFromString(selectorName);
	UIColor *myColor = [UIColor blackColor];
	
	if([UIColor respondsToSelector:selector])
	{
		myColor = [UIColor performSelector:selector];
	}
	
	self.color = myColor;
    
    }

- (void)setColor:(UIColor *)aColor
{
	self.view.backgroundColor = aColor;
    [self.view setNeedsDisplay];

}

@end
