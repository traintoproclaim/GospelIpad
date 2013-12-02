//
//  StartScreen10.h
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen12.h"
#import "GoodNewsScreen.h" 

@interface StartScreen10 : UIViewController
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
    CGRect lb11;
    CGRect lb12;
    CGRect lb13;
    CGRect lb14;
    CGRect lb15;
    
    UIImageView *image;
    UIImageView *image1;
    UIImageView *image2;
    UIImageView *image3;
    UIImageView *image4;
    UIImageView *image5;
    UIImageView *image6;
    UIImageView *image7;
    UIImageView *image8;
    UIImageView *image9;
    UIImageView *image10;
    UIImageView *image11;
    
    
    UILabel *lable1;
    UILabel *lable2;
    UILabel *lable3;
    UILabel *text1;
    UIButton *text;
    
    GoodNewsScreen *tab1;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable;
    
    
    
    
}
@property(nonatomic,retain) UILabel *text1;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIImageView *image1;
@property(nonatomic,retain) UIImageView *image2;
@property(nonatomic,retain) UIImageView *image3;
@property(nonatomic,retain) UIImageView *image4;
@property(nonatomic,retain) UIImageView *image5;
@property(nonatomic,retain) UIImageView *image6;
@property(nonatomic,retain) UIImageView *image7;
@property(nonatomic,retain) UIImageView *image8;
@property(nonatomic,retain) UIImageView *image9;
@property(nonatomic,retain) UIImageView *image10;
@property(nonatomic,retain) UIImageView *image11;
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UILabel *lable1;
@property(nonatomic,retain) UILabel *lable2;
@property(nonatomic,retain) UILabel *lable3;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable;


-(IBAction)gobackview:(id)sender;
-(void)callgiltyanimation;
-(void)longTap;
-(void)labelTap;
-(void)showlable;


@end
