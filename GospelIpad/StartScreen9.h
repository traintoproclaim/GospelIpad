//
//  StartScreen9.h
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen10.h"
#import "StartScreen11.h"

@interface StartScreen9 : UIViewController
{
    CGRect lb1;
    CGRect lb2;
    CGRect lb3;
    CGRect lb4;
    
    UIImageView *image;
    UIButton *yes;
    UIButton *no;
    UIButton *text;
    
    StartScreen10 *tab1;
    StartScreen11 *tab2;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable1;
    
    
}
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UIButton *no;
@property(nonatomic,retain) UIButton *yes;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable1;


-(IBAction)gobackview:(id)sender;
-(void)longTap;
-(IBAction)yesAction:(id)sender;
-(IBAction)noAction:(id)sender;
-(void)labelTap;
-(void)showlable;

@end
