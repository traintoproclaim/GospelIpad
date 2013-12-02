//
//  CreditView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GospelIpadViewController.h"
#import "RegisterView.h"
#import "Reachability.h"
@interface CreditView : UIViewController
{
    IBOutlet UIButton *back;
    IBOutlet UILabel *lable1;
    IBOutlet UILabel *lable2;
    IBOutlet UIButton *lable3;
    IBOutlet UILabel *lable4;
    IBOutlet UIButton *lable5;
    IBOutlet UILabel *lable6;
    IBOutlet UILabel *lable7;
    IBOutlet UILabel *lable8;
}
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UILabel *lable1;
@property(nonatomic,retain) IBOutlet UILabel *lable2;
@property(nonatomic,retain) IBOutlet UIButton *lable3;
@property(nonatomic,retain) IBOutlet UILabel *lable4;
@property(nonatomic,retain) IBOutlet UIButton *lable5;
@property(nonatomic,retain) IBOutlet UILabel *lable6;
@property(nonatomic,retain) IBOutlet UILabel *lable7;
@property(nonatomic,retain) IBOutlet UILabel *lable8;

-(IBAction)gobackview:(id)sender;
-(IBAction)link:(id)sender;
-(IBAction)link1:(id)sender;
@end
