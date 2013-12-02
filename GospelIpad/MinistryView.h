//
//  MinistryView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>
@interface MinistryView : UIViewController<MFMailComposeViewControllerDelegate>
{
    IBOutlet UIButton *back;
    IBOutlet UILabel *lable1;
    IBOutlet UILabel *lable2;
    IBOutlet UILabel *lable3;
    IBOutlet UILabel *lable4;
    IBOutlet UIButton *lable5;
    IBOutlet UILabel *lable6;
    IBOutlet UIButton *lable7;
}
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UILabel *lable1;
@property(nonatomic,retain) IBOutlet UILabel *lable2;
@property(nonatomic,retain) IBOutlet UILabel *lable3;
@property(nonatomic,retain) IBOutlet UILabel *lable4;
@property(nonatomic,retain) IBOutlet UIButton *lable5;
@property(nonatomic,retain) IBOutlet UILabel *lable6;
@property(nonatomic,retain) IBOutlet UIButton *lable7;

-(IBAction)gobackview:(id)sender;
-(IBAction)Mailsend:(id)sender;
-(IBAction)link:(id)sender;
@end
