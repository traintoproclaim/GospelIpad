//
//  Questions1.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Questions1 : UIViewController<UITextFieldDelegate>
{
    IBOutlet UIButton *next;
    IBOutlet UIButton *quote;
    
    NSInteger value1;
    NSInteger value2;
    NSInteger value3;
    NSInteger value4;
    NSInteger value5;
    NSInteger value6;
    NSInteger value7;
    NSInteger value8;
    NSInteger value9;
    NSInteger value10;
    UIButton *_button1;
    UIButton *_button2;
    UIButton *_button3;
    UIButton *_button4;
    UIButton *_button5;
    
    BOOL check1;
    BOOL check2;
    BOOL check3;
    BOOL check4;
    BOOL check5;
    
    
    NSInteger count;
    NSInteger count1;
    NSInteger count2;
    NSInteger count3;
    NSInteger count4;
    NSInteger count5;
    NSInteger count6;
    NSInteger count7;
    NSInteger count8;
    NSInteger count9;
    NSInteger newcount;
    
    
    IBOutlet UILabel *quizlb;
    IBOutlet UILabel *qlb;
    IBOutlet UILabel *flb;
    IBOutlet UILabel *slb;
    IBOutlet UILabel *tlb;
    IBOutlet UILabel *folb;
    IBOutlet UILabel *filb;
    IBOutlet UIButton *text;
    
    
    UITextField *name;
    UILabel *inst;
    NSInteger newval;
    NSString *groid;
    
    
    
}

@property(nonatomic,retain) UIButton *_button1;
@property(nonatomic,retain) UIButton *_button2;
@property(nonatomic,retain) UIButton *_button3;
@property(nonatomic,retain) UIButton *_button4;
@property(nonatomic,retain) UIButton *_button5;
@property(nonatomic,retain) NSString *groid;
@property(nonatomic,retain) UILabel *inst;
@property(nonatomic,retain) UITextField *name;
@property(nonatomic,retain) IBOutlet UILabel *quizlb;
@property(nonatomic,retain) IBOutlet UILabel *qlb;
@property(nonatomic,retain) IBOutlet UILabel *flb;
@property(nonatomic,retain) IBOutlet UILabel *slb;
@property(nonatomic,retain) IBOutlet UILabel *tlb;
@property(nonatomic,retain) IBOutlet UILabel *folb;
@property(nonatomic,retain) IBOutlet UILabel *filb;
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UIButton *quote;
@property(nonatomic,retain) IBOutlet UIButton *text;


-(IBAction)nextview:(id)sender;
-(IBAction)radiobuttoncheck1:(id)sender;
-(IBAction)radiobuttoncheck2:(id)sender;
-(IBAction)radiobuttoncheck3:(id)sender;
-(IBAction)radiobuttoncheck4:(id)sender;
-(IBAction)radiobuttoncheck5:(id)sender;

-(void)nextqus;
-(void)question2;
-(void)question3;
-(void)question4;
-(void)question5;
-(void)question6;
-(void)question7;
-(void)question8;
-(void)question9;
-(void)question10;
-(void)score;
-(void)audience;
-(void)hideradio;
-(void)longTap;
-(void)labelTap;
-(void)showlable;



@end
