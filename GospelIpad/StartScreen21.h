//
//  StartScreen21.h
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen22.h"
@interface StartScreen21 : UIViewController
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
    UIButton *text;
    
    StartScreen22 *tab1;
    
    IBOutlet UIButton *lable;
    IBOutlet UIButton *back;
    
}
@property(nonatomic,retain) UIButton *text;
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
-(void)callgiltyanimation;
-(void)longTap;
-(void)labelTap;
-(void)showlable;

@end
