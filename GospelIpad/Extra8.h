//
//  Extra8.h
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuartzCore/QuartzCore.h"
#import "Extra10.h"

@interface Extra8 : UIViewController
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
    CGRect lb16;
    CGRect lb17;
    CGRect lb18;
    CGRect lb19;
    CGRect lb20;
    CGRect lb21;
    CGRect lb22;
    CGRect lb23;
    CGRect lb24;
    CGRect lb25;
    
    
    
    UIButton *text;
    UILabel *lable2;
    UILabel *lable3;
    
    UIImageView *image7;
    UIImageView *image8;
    UIImageView *image9;
    UIImageView *image17;
    UIImageView *image18;
    UIImageView *image14;
    UIImageView *image;
    UIView *customView;
    
    Extra10 *tab3;
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable1;
    
    
}
@property(nonatomic,retain) UIView *customView;
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIImageView *image14;
@property(nonatomic,retain) UIImageView *image7;
@property(nonatomic,retain) UIImageView *image8;
@property(nonatomic,retain) UIImageView *image9;
@property(nonatomic,retain) UIImageView *image17;
@property(nonatomic,retain) UIImageView *image18;
@property(nonatomic,retain) UILabel *lable2;
@property(nonatomic,retain) UILabel *lable3;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable1;


-(void)calquestionimages;
-(void)labelTap;
-(void)showlable;
-(IBAction)gobackview:(id)sender;

@end
