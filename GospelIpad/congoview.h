//
//  congoview.h
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define ServerURL @"http://html.traintoproclaim.com/gospel/ReceiveUploads.php?"

@interface congoview : UIViewController
{
    IBOutlet UIButton *back;
    IBOutlet UILabel *lable0;
    IBOutlet UILabel *lable1;
    IBOutlet UILabel *lable2;
    IBOutlet UILabel *lable3;
    IBOutlet UILabel *lable4;
    IBOutlet UILabel *lable5;
    IBOutlet UIButton *lable6;
    IBOutlet UILabel *lable7;
    IBOutlet UIButton *next;
    
    
}
@property(nonatomic,retain) IBOutlet UILabel *lable0;
@property(nonatomic,retain) IBOutlet UILabel *lable1;
@property(nonatomic,retain) IBOutlet UILabel *lable2;
@property(nonatomic,retain) IBOutlet UILabel *lable3;
@property(nonatomic,retain) IBOutlet UILabel *lable4;
@property(nonatomic,retain) IBOutlet UILabel *lable5;
@property(nonatomic,retain) IBOutlet UIButton *lable6;
@property(nonatomic,retain) IBOutlet UILabel *lable7;
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UIButton *back;

-(IBAction)gobackview:(id)sender;
-(IBAction)link:(id)sender;
-(IBAction)nextview:(id)sender;
-(void)longTap;
-(void)inwitdownloadhstring;

@end
