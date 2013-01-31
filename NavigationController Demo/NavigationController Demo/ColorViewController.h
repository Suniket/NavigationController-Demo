//
//  ColorViewController.h
//  NavigationController Demo
//
//  Created by Shreekant Pawar on 29/01/13.
//  Copyright (c) 2013 Suniket Wagh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorViewController : UIViewController
{

    UIColor *color;
}

@property (nonatomic, retain) UIColor *color;

- (void)setColorFromName:(NSString *)colorName;


@end
