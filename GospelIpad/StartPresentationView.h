//
//  StartPresentationView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Extra.h"

@interface StartPresentationView : UIViewController
{
    UIImageView *imgview;
    UILabel *godis;
    UILabel *holy;
    UILabel *holy1;
    UILabel *holy2;
    UILabel *holy3;
    UILabel *holy4;
    UILabel *heavn;
    CGRect lb10;
    
    NSInteger point;
    NSInteger next1;
    CGRect lb1;
    CGRect lb2;
    CGRect lb3;
    CGRect lb4;
    Extra *tab1;
    
    IBOutlet  UIButton *lable1;
    IBOutlet UIButton *back;
    IBOutlet UIButton *text;
    
    
}
@property(nonatomic,retain) IBOutlet UIButton *text;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable1;
@property(nonatomic,retain) UILabel *heavn;
@property(nonatomic,retain) UILabel *godis;
@property(nonatomic,retain) UILabel *holy;
@property(nonatomic,retain) UILabel *holy1;
@property(nonatomic,retain) UILabel *holy2;
@property(nonatomic,retain) UILabel *holy3;
@property(nonatomic,retain) UILabel *holy4;
@property(nonatomic,retain) UIImageView *imgview;

-(IBAction)gobackview:(id)sender;
-(void)longTap;
-(void)labelTap;
-(void)showlable;
@end
