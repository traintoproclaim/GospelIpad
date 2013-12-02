//
//  RegisterView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@class MBProgressHUD;

@interface RegisterView : UIViewController
{
    IBOutlet UIWebView *web;
    IBOutlet UILabel *backbg;
    IBOutlet UIButton *back;
    
    
    NSString *link;
    NSTimer *timer;
    
    MBProgressHUD *HUD;
    
    
}
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIWebView *web;
@property(nonatomic,retain) IBOutlet UILabel *backbg;
@property(nonatomic,copy)   NSString *link;


- (IBAction)backView:(id)sender;
-(void)loading;
-(void)longTap;

@end
