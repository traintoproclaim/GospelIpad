//
//  StartScreen18.h
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

@interface StartScreen18 : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
{
    MBProgressHUD *HUD;
    
    IBOutlet UITextField *email;
    IBOutlet UITextField *presentername;
    IBOutlet UIButton *back;
    IBOutlet UIButton *next;
    IBOutlet UITextField *audiname;
    IBOutlet UILabel *qlb;
    
    
    UIAlertView *alert11;
    UIButton *send;
    NSTimer *timer;
    NSInteger countnew;
    NSMutableData *responseData;
    
    
}
@property(nonatomic,retain) UIButton *send;
@property(nonatomic,retain) UIAlertView *alert;
@property(nonatomic,retain) IBOutlet UILabel *qlb;
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UITextField *email;
@property(nonatomic,retain) IBOutlet UITextField *presentername;
@property(nonatomic,retain) IBOutlet UITextField *audiname;
@property(nonatomic,retain) IBOutlet UIButton *back;


-(IBAction)gobackview:(id)sender;
-(void)inwitdownloadhstring;
-(IBAction)sendAction:(id)sender;
-(BOOL)validateEmail:(NSString *) candidate;
-(BOOL)validateEmail1:(NSString *) candidate;
-(void)animateTextField:(UITextField*)textField up:(BOOL)up;
-(void)longTap;
-(void)loading;
-(IBAction)nextview1:(id)sender;


@end
