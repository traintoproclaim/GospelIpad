//
//  StartScreen16.h
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen17.h"
#import "MBProgressHUD.h"

#define ServerURL @"http://html.traintoproclaim.com/gospel/ReceiveUploads.php?"

@class MBProgressHUD;

@interface StartScreen16 : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
{
    
    UIButton *_button1;
    UIButton *_button2;
    UIButton *_button3;
    UIButton *_button4;
    
    BOOL check1;
    BOOL check2;
    BOOL check3;
    BOOL check4;
    
    UILabel *lable1;
    UILabel *lable2;
    UILabel *lable3;
    UILabel *lable4;
    UILabel *lable5;
    UILabel *lable6;
    
    UIButton *send1;
    UIButton *send2;
    UIButton *send3;
    UIButton *send4;
    UILabel *quizlb;
    
    IBOutlet UITextField *email;
    IBOutlet UITextField *audiname;
    IBOutlet UIButton *next1;
    IBOutlet UIButton *back;
    
    UIAlertView *alert11;
    NSTimer *timer;
    NSInteger count;
    NSMutableData *responseData;
    
    StartScreen17 *tab1;
    MBProgressHUD *HUD;
    NSString *back2;
    
    
}
@property(nonatomic,retain) NSString *back2;
@property(nonatomic,retain) UILabel *quizlb;
@property(nonatomic,retain) UIButton *_button1;
@property(nonatomic,retain) UIButton *_button2;
@property(nonatomic,retain) UIButton *_button3;
@property(nonatomic,retain) UIButton *_button4;

@property(nonatomic,retain) UIButton *send1;
@property(nonatomic,retain) UIButton *send2;
@property(nonatomic,retain) UIButton *send3;
@property(nonatomic,retain) UIButton *send4;

@property(nonatomic,retain) UILabel *lable1;
@property(nonatomic,retain) UILabel *lable2;
@property(nonatomic,retain) UILabel *lable3;
@property(nonatomic,retain) UILabel *lable4;
@property(nonatomic,retain) UILabel *lable5;
@property(nonatomic,retain) UILabel *lable6;

@property(nonatomic,retain) IBOutlet UITextField *email;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UITextField *audiname;
@property(nonatomic,retain) IBOutlet UIButton *next1;

-(IBAction)gobackview:(id)sender;
-(IBAction)radiobuttoncheck1:(id)sender;
-(IBAction)radiobuttoncheck2:(id)sender;
-(IBAction)radiobuttoncheck3:(id)sender;
-(IBAction)radiobuttoncheck4:(id)sender;
-(IBAction)send1Action:(id)sender;
-(IBAction)send2Action:(id)sender;
-(IBAction)send3Action:(id)sender;
-(IBAction)send4Action:(id)sender;
-(IBAction)nextview:(id)sender;
-(void)inwitdownloadhstring;
-(void)inwitdownloadhstring1;
-(BOOL)validateEmail:(NSString *) candidate;
-(void)loading;
-(void)longTap;
-(void)animateTextField:(UITextField*)textField up:(BOOL)up;

-(void)hideradio;

@end
