//
//  StartScreen19.h
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen21.h"
#import "StartScreen22.h"
@interface StartScreen19 : UIViewController
{
    CGRect lb2;
    CGRect lb3;
    CGRect lb7;
    CGRect lb8;
    CGRect lb9;
    CGRect lb10;
    CGRect lb11;
    CGRect lb12;
    
    UIImageView *image;
    UIImageView *image2;
    UIImageView *image1;
    UIImageView *image3;
    UIImageView *image4;
    UIImageView *image7;
    UIImageView *image8;
    UIImageView *image6;
    
    
    UIButton *yes;
    UIButton *no;
    UIButton *text;
    
    StartScreen21 *tab1;
    StartScreen22 *tab;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable;
    
}
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UIButton *no;
@property(nonatomic,retain) UIButton *yes;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIImageView *image2;
@property(nonatomic,retain) UIImageView *image3;
@property(nonatomic,retain) UIImageView *image1;
@property(nonatomic,retain) UIImageView *image4;
@property(nonatomic,retain) UIImageView *image7;
@property(nonatomic,retain) UIImageView *image8;
@property(nonatomic,retain) UIImageView *image6;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable;



-(IBAction)gobackview:(id)sender;
-(IBAction)yesAction:(id)sender;
-(IBAction)noAction:(id)sender;
-(void)longTap;
-(void)labelTap;
-(void)showlable;

@end
