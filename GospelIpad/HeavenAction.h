//
//  HeavenAction.h
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen15.h"
#import "MailView.h"
#import "HellAction.h"

@interface HeavenAction : UIViewController
{
    CGRect lb1;
    CGRect lb2;
    CGRect lb3;
    CGRect lb4;
    
    UIImageView *image1;
    UIImageView *image2;
    UIImageView *image3;
    
    UILabel *lable1;
    UILabel *lable2;
    UILabel *lable3;
    
    UIButton *text;      
    UIButton *yes;
    UIButton *no;
    
    HellAction *tab1;
    MailView *tab2;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable4;
    
    
}
@property(nonatomic,retain) UIImageView *image1;
@property(nonatomic,retain) UIImageView *image2;
@property(nonatomic,retain) UIImageView *image3;
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UILabel *lable1;
@property(nonatomic,retain) UILabel *lable2;
@property(nonatomic,retain) UILabel *lable3;
@property(nonatomic,retain) UIButton *no;
@property(nonatomic,retain) UIButton *yes;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable4;

-(IBAction)gobackview:(id)sender;
-(IBAction)yesAction:(id)sender;
-(IBAction)noAction:(id)sender;
-(void)longTap;
-(void)labelTap;
-(void)showlable;


@end
