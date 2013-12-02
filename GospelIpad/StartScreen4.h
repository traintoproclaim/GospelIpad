//
//  StartScreen4.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen5.h"
#import "StartScreen6.h"

@interface StartScreen4 : UIViewController
{
    CGRect lb1;
    CGRect lb2;
    CGRect lb3;
    CGRect lb4;
    CGRect lb5;
    CGRect lb6;
    CGRect lb7;
    CGRect lb8;
    CGRect lb9;
    CGRect lb10;
    
    UILabel *lable1;
    UILabel *lable3;
    UILabel *lable4;
    UILabel *lable5;
    
    UIImageView *image;
    UIImageView *image1;
    UIImageView *image2;
    UIImageView *image3;
    UIImageView *image4;
    
    UIButton *yes;
    UIButton *no;
    UIButton *text;
    
    StartScreen5 *tab1;
    StartScreen6 *tab2;
    IBOutlet UIButton *back;
    IBOutlet UIButton  *lable2;
    
    
}
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UIButton *no;
@property(nonatomic,retain) UIButton *yes;
@property(nonatomic,retain) UILabel *lable1;
@property(nonatomic,retain) UILabel *lable3;
@property(nonatomic,retain) UILabel *lable4;
@property(nonatomic,retain) UILabel *lable5;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIImageView *image1;
@property(nonatomic,retain) UIImageView *image2;
@property(nonatomic,retain) UIImageView *image3;
@property(nonatomic,retain) UIImageView *image4;
@property(nonatomic,retain) IBOutlet UIButton  *lable2;
@property(nonatomic,retain) IBOutlet UIButton *back;

-(IBAction)yesAction:(id)sender;
-(IBAction)noAction:(id)sender;
-(void)callnojusticeanimation;
-(IBAction)gobackview:(id)sender;
-(void)longTap;
-(void)labelTap;
-(void)showlable;

@end
