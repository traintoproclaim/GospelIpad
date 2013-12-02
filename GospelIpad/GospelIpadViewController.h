//
//  GospelIpadViewController.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuartzCore/QuartzCore.h"

@interface GospelIpadViewController : UIViewController
{
    UIButton *interactive;
    UIButton *Video;
    UIButton *menu;
    UIView *customView;
    UIImageView *logo;
}
@property(nonatomic,retain) UIView *customView;
@property(nonatomic,retain) UIButton *interactive;
@property(nonatomic,retain) UIButton *Video;
@property(nonatomic,retain) UIImageView *logo;
@property(nonatomic,retain) UIButton *menu;


-(IBAction)presentation:(id)sender;
-(IBAction)video:(id)sender;
-(IBAction)menuAction:(id)sender;
-(void)longversion;
-(void)shortversion;
-(void)closemenu;
-(void)personalisephoto;
-(void)aboutmistry;
-(void)copyright;
-(void)credits;
-(void)changelogin;
@end
