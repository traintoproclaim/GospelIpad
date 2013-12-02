//
//  score.h
//  GospelIpad
//
//  Created by vibha on 5/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface score : UIViewController
{
    NSInteger finalscore;
    UIImageView *imgview;
    UIImageView *imgview1;
    UIImageView *imgview2;
    UIImageView *imgview3;
    UIImageView *imgview4;
    UIImageView *imgview5;
    NSInteger count;
    
    
    IBOutlet UILabel *defination;
    IBOutlet UILabel *inst;
    IBOutlet UILabel *quizlb;
    IBOutlet UILabel *lb1;
    IBOutlet UILabel *lb2;
    IBOutlet UILabel *lb3;
    IBOutlet UILabel *lb4;
    IBOutlet UILabel *lb5;
    IBOutlet UIButton *quote;
    IBOutlet UIButton *quote1;
    IBOutlet UILabel *final;
    IBOutlet UIButton *text;
    IBOutlet UIButton *next;
    
}

@property(nonatomic,retain) UIImageView *imgview;
@property(nonatomic,retain) UIImageView *imgview1;
@property(nonatomic,retain) UIImageView *imgview2;
@property(nonatomic,retain) UIImageView *imgview3;
@property(nonatomic,retain) UIImageView *imgview4;
@property(nonatomic,retain) UIImageView *imgview5;
@property(nonatomic,retain) IBOutlet UILabel *inst;
@property(nonatomic,retain) IBOutlet UILabel *lb1; 
@property(nonatomic,retain) IBOutlet UILabel *lb2;
@property(nonatomic,retain) IBOutlet UILabel *lb3;
@property(nonatomic,retain) IBOutlet UILabel *lb4;
@property(nonatomic,retain) IBOutlet UILabel *lb5;
@property(nonatomic,retain) IBOutlet UIButton *quote;
@property(nonatomic,retain) IBOutlet UIButton *quote1;
@property(nonatomic,retain) IBOutlet UILabel *defination;
@property(nonatomic,retain) IBOutlet UIButton *text;
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UILabel *quizlb;
@property(nonatomic,retain) IBOutlet UILabel *final;



-(void)callcircleimage;
-(void)callcrossimage;
-(void)callcrossimage1;
-(void)callcrossimage2;
-(void)callcrossimage3;

-(void)campare1;
-(void)campare2;
-(void)campare3;
-(void)campare4;
-(void)campare5;
-(void)labelTap;
-(void)showlable;


-(void)longTap;

-(IBAction)nextbutton:(id)sender;

@end
