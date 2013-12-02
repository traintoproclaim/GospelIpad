//
//  ChangeLoginView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
@class MBProgressHUD;

#define ServerURL @"http://html.traintoproclaim.com/gospel/ReceiveUploads.php?"


@interface ChangeLoginView : UIViewController<UITextFieldDelegate>
{
    MBProgressHUD *HUD;
    NSTimer *timer;
    NSMutableData *responseData;
    NSInteger loginval;
    UIButton *login1;
    UIButton *pass;
    
    IBOutlet UIButton *back;
    IBOutlet UILabel *qlb;
    IBOutlet UIButton *next;
    IBOutlet UITextField *login;
    IBOutlet UITextField *pwd;
    
}
@property(nonatomic,retain) UIButton *pass;
@property(nonatomic,retain) UIButton *login1;
@property(nonatomic,retain) IBOutlet UITextField *login;
@property(nonatomic,retain) IBOutlet UITextField *pwd;
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UILabel *qlb;
@property(nonatomic,retain) IBOutlet UIButton *back;


-(IBAction)gobackview:(id)sender;
-(void)loadloginview;
-(void)loginview;
-(void)registerview;
-(void)inwitdownloadhstring;
-(void)loading;



@end
