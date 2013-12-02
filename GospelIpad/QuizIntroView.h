//
//  QuizIntroView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizIntroView : UIViewController
{
    IBOutlet UIButton *next;
    IBOutlet UILabel *lable;
    IBOutlet UIButton *back;
}
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UILabel *lable;
@property(nonatomic,retain) IBOutlet UIButton *back;

-(IBAction)gobackview:(id)sender;
-(IBAction)nextview:(id)sender;

@end
