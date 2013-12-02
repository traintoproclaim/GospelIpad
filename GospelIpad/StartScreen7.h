//
//  StartScreen7.h
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen8.h"
#import "StartScreen9.h"

@interface StartScreen7 : UIViewController
{
    CGRect lb1;
    CGRect lb2;
    CGRect lb3;
    CGRect lb4;
    CGRect lb5;
    
    UIImageView *image;
    StartScreen8 *tab1;
    StartScreen9 *tab2;
    
    UIButton *yes;
    UIButton *no;
    UIButton *text;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable2;
    
    
    
}
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIButton *no;
@property(nonatomic,retain) UIButton *yes;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable2;

-(IBAction)gobackview:(id)sender;
-(void)longTap;
-(void)labelTap;
-(void)showlable;
-(IBAction)yesAction:(id)sender;
-(IBAction)noAction:(id)sender;
@end
