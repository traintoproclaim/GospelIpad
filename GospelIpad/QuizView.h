//
//  QuizView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizView : UIViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *name;
    IBOutlet UIButton *next;
    IBOutlet UILabel *quiz;
    IBOutlet UILabel *skip;
    IBOutlet UILabel *nlable;
    IBOutlet UIButton *back;
    
    BOOL check1;
    BOOL check2;
    
    UIButton *_button1;
    UIButton *_button2;
}
@property(nonatomic,retain) IBOutlet UILabel *quiz;
@property(nonatomic,retain) IBOutlet UILabel *skip;
@property(nonatomic,retain) IBOutlet UILabel *nlable;
@property(nonatomic,retain) IBOutlet UITextField *name;
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) UIButton *_button1;
@property(nonatomic,retain) UIButton *_button2;

-(IBAction)gobackview:(id)sender;
-(IBAction)radiobuttoncheck1:(id)sender;
-(IBAction)radiobuttoncheck2:(id)sender;
-(IBAction)nextview:(id)sender;

@end
