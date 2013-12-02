//
//  newView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface newView : UIViewController
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
    
    UIImageView *image6;
    UIImageView *image7;
    UIImageView *image8;
    UIImageView *image9;
    UIImageView *image10;
    UIImageView *image11;
    UIImageView *image12;
    UIImageView *image13;
    
    
    UILabel *lable2;
    UILabel *lable3;
    UILabel *lable4;
    UILabel *lable5;
    UIButton *text;
    NSInteger vcount;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable1;
}
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UILabel *lable2;
@property(nonatomic,retain) UILabel *lable3;
@property(nonatomic,retain) UILabel *lable4;
@property(nonatomic,retain) UILabel *lable5;

@property(nonatomic,retain) UIImageView *image6;
@property(nonatomic,retain) UIImageView *image7;
@property(nonatomic,retain) UIImageView *image8;
@property(nonatomic,retain) UIImageView *image9;
@property(nonatomic,retain) UIImageView *image10;
@property(nonatomic,retain) UIImageView *image11;
@property(nonatomic,retain) UIImageView *image12;
@property(nonatomic,retain) UIImageView *image13;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable1;


-(void)callcrossimage;

-(void)labelTap;
-(void)showlable;
-(IBAction)gobackview:(id)sender;
-(void)longTap;


@end
