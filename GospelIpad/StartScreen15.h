//
//  StartScreen15.h
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Extra9.h"
@interface StartScreen15 : UIViewController
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
    
    
    UIImageView *image;
    UIImageView *image1;
    UIImageView *image2;
    UIImageView *image3;
    UIImageView *image4;
    UIImageView *image5;
    UIImageView *image6;
    UIImageView *image7;
    UIImageView *image8;
    
    UIButton *text;
    UILabel *lable2;
    
    Extra9 *tab1;
    
    
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
@property(nonatomic,retain) UIImageView *image6;
@property(nonatomic,retain) UIImageView *image7;
@property(nonatomic,retain) UIImageView *image8;
@property(nonatomic,retain) UILabel *lable2;

@property(nonatomic,retain) IBOutlet UIButton *lable1;
@property(nonatomic,retain) IBOutlet UIButton *back;


-(IBAction)gobackview:(id)sender;
-(void)callcrossimage;
-(void)callturnimage;
-(void)callbloodanimation;
-(void)longTap;
-(void)labelTap;
-(void)showlable;

@end
