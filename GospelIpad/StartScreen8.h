//
//  StartScreen8.h
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen9.h"
@interface StartScreen8 : UIViewController
{
    CGRect lb1;
    CGRect lb2;
    CGRect lb3;
    CGRect lb4;
    
    
    UIImageView *image;
    UIImageView *image1;
    UIImageView *image2;
    
    UILabel *lable1;
    UILabel *lable3;
    UILabel *lable4;
    UILabel *lable5;
    UILabel *lable6;
    UIButton *text;
    
    StartScreen9 *tab1;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable2;
    
    
    
    
}
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIImageView *image1;
@property(nonatomic,retain) UIImageView *image2;
@property(nonatomic,retain) IBOutlet UIButton *lable2;
@property(nonatomic,retain) IBOutlet UIButton *back;

-(IBAction)gobackview:(id)sender;
-(void)longTap;
-(void)callgiltyanimation;
-(void)labelTap;
-(void)showlable;

@end
