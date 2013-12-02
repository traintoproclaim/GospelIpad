//
//  InstructionView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstructionView : UIViewController
{
    IBOutlet UIButton *next;
    IBOutlet UILabel *inst;
    IBOutlet UILabel *data;
    IBOutlet UILabel *data1;
    IBOutlet UIButton *data2;
    IBOutlet UILabel *data3;
    IBOutlet UILabel *data4;
    IBOutlet UIButton *back;
}
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UILabel *inst;
@property(nonatomic,retain) IBOutlet UILabel *data;
@property(nonatomic,retain) IBOutlet UILabel *data1;
@property(nonatomic,retain) IBOutlet UIButton *data2;
@property(nonatomic,retain) IBOutlet UILabel *data3;
@property(nonatomic,retain) IBOutlet UILabel *data4;
@property(nonatomic,retain) IBOutlet UIButton *back;


-(IBAction)gobackview:(id)sender;
-(IBAction)link:(id)sender;
-(IBAction)QuizView:(id)sender;

@end
