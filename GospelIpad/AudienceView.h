//
//  AudienceView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AudienceView : UIViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *name;
    IBOutlet UIButton *next;
    IBOutlet UILabel *lb1;
    IBOutlet UILabel *lb2;
    IBOutlet UILabel *lb3;
    IBOutlet UILabel *inst;
    
    NSInteger value;
    
    BOOL check1;
    BOOL check2;
    BOOL check3;
    
    UIButton *_button1;
    UIButton *_button2;
    UIButton *_button3;
    NSInteger next1;
    
    
    
}
@property(nonatomic,retain) UIButton *_button1;
@property(nonatomic,retain) UIButton *_button2;
@property(nonatomic,retain) UIButton *_button3;

@property(nonatomic,retain) IBOutlet UILabel *lb1;
@property(nonatomic,retain) IBOutlet UILabel *lb2;
@property(nonatomic,retain) IBOutlet UILabel *lb3;
@property(nonatomic,retain) IBOutlet UITextField *name;
@property(nonatomic,retain) IBOutlet UIButton *next;

@property(nonatomic,retain) IBOutlet UILabel *inst;
@property(nonatomic,retain) IBOutlet UITextView *data;

-(IBAction)nextview:(id)sender;
-(IBAction)radiobuttoncheck1:(id)sender;
-(IBAction)radiobuttoncheck2:(id)sender;
-(IBAction)radiobuttoncheck3:(id)sender;
-(void)longTap;


@end
