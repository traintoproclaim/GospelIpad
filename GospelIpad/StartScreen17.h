//
//  StartScreen17.h
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSON.h"
#import "ASIFormDataRequest.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
@class MBProgressHUD;

#define ServerURL @"http://html.traintoproclaim.com/gospel/ReceiveUploads.php?"
@interface StartScreen17 : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
{
    MBProgressHUD *HUD;
    NSTimer *timer;
    UIButton *_button1;
    UIButton *_button2;
    
    
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
    NSInteger countnew;
    
    BOOL check1;
    BOOL check2;
    
    IBOutlet UILabel *qlb;
    IBOutlet UILabel *flb;
    IBOutlet UILabel *slb;
    IBOutlet UITextField *email;
    IBOutlet UITextField *presentername;
    IBOutlet UIButton *back;
    IBOutlet UITextField *audiname;
    IBOutlet UIButton *next;
    IBOutlet UIButton *next1;
    
    UIButton *send;
    UIButton *send1;
    UIAlertView *alert;
    NSMutableData *responseData;
    UIAlertView *alert11;
    UILabel *quizlb;
    
    
}
@property(nonatomic,retain) UIAlertView *alert;
@property(nonatomic,retain) UILabel *quizlb;
@property(nonatomic,retain) UIButton *send;
@property(nonatomic,retain) UIButton *send1;
@property(nonatomic,retain) UIButton *_button1;
@property(nonatomic,retain) UIButton *_button2;
@property(nonatomic,retain) IBOutlet UILabel *qlb;
@property(nonatomic,retain) IBOutlet UILabel *flb;
@property(nonatomic,retain) IBOutlet UILabel *slb;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UIButton *next1;
@property(nonatomic,retain) IBOutlet UITextField *email;
@property(nonatomic,retain) IBOutlet UITextField *presentername;
@property(nonatomic,retain) IBOutlet UITextField *audiname;



-(IBAction)gobackview:(id)sender;
-(IBAction)radiobuttoncheck1:(id)sender;
-(IBAction)radiobuttoncheck2:(id)sender;
-(void)nextqus;
-(void)question2;
-(void)question3;
-(void)question4;
-(void)question5;
-(void)question6;
-(void)question7;
-(void)question8;
-(void)question9;
-(void)loading;
-(void)longTap;
-(void)dontagree;
-(void)hideradio;
-(IBAction)nextview:(id)sender;
-(IBAction)nextview1:(id)sender;
-(void)inwitdownloadhstring1;
-(IBAction)sendAction1:(id)sender;
-(BOOL)validateEmail:(NSString *) candidate;
-(BOOL)validateEmail1:(NSString *) candidate;
-(void)animateTextField:(UITextField*)textField up:(BOOL)up;
@end
