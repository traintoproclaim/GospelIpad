//
//  StartScreen11.h
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen12.h"
#import "StartScreen20.h"
#import "StartScreen19.h"

@interface StartScreen11 : UIViewController
{
    CGRect lb1;
    CGRect lb2;
    CGRect lb3;
    CGRect lb4;
    CGRect lb5;
    
    UIImageView *image;
    UIImageView *image1;
    UIImageView *image2;
    UIImageView *image3;
    UIImageView *image4;
    UIImageView *image5;
    
    StartScreen20 *tab1;
    StartScreen19 *tab;
    
    UIButton *yes;
    UIButton *no;
    UIButton *text;
    
    IBOutlet UIButton *lable1;
    IBOutlet UIButton *back;
    
    
}
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIImageView *image1;
@property(nonatomic,retain) UIImageView *image2;
@property(nonatomic,retain) UIImageView *image3;
@property(nonatomic,retain) UIImageView *image4;
@property(nonatomic,retain) UIImageView *image5;
@property(nonatomic,retain) UIButton *no;
@property(nonatomic,retain) UIButton *yes;
@property(nonatomic,retain) IBOutlet UIButton *lable1;
@property(nonatomic,retain) IBOutlet UIButton *back;


-(IBAction)yesAction:(id)sender;
-(IBAction)noAction:(id)sender;
-(IBAction)gobackview:(id)sender;
-(void)longTap;
-(void)labelTap;
-(void)showlable;
@end
