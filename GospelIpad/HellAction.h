//
//  HellAction.h
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen15.h"
@interface HellAction : UIViewController
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
    UIImageView *image12;
    UIImageView *image13;
    UIImageView *image14;
    UIImageView *image15;
    UIImageView *image16;
    UIImageView *image17;
    UIImageView *image18;
    
    
    
    UIButton *text; 
    UILabel *lable2;
    NSInteger value;
    
    
    StartScreen15 *tab1;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable1;
    
    
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
@property(nonatomic,retain) UIImageView *image9;
@property(nonatomic,retain) UIImageView *image10;
@property(nonatomic,retain) UIImageView *image11;
@property(nonatomic,retain) UIImageView *image12;
@property(nonatomic,retain) UIImageView *image13;
@property(nonatomic,retain) UIImageView *image14;
@property(nonatomic,retain) UIImageView *image15;
@property(nonatomic,retain) UIImageView *image16;
@property(nonatomic,retain) UIImageView *image17;
@property(nonatomic,retain) UIImageView *image18;
@property(nonatomic,retain) UILabel *lable2;
@property(nonatomic,retain) IBOutlet UIButton *lable1;
@property(nonatomic,retain) IBOutlet UIButton *back;

-(IBAction)gobackview:(id)sender;
-(void)callcrossimage;
-(void)calleternityanimation;
-(void)soultransfer;
-(void)recoranimation;
-(void)longTap;
-(void)labelTap;
-(void)showlable;

@end
