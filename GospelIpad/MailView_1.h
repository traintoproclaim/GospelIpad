//
//  MailView_1.h
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

#define ServerURL @"http://html.traintoproclaim.com/gospel/ReceiveUploads.php?"

@class MBProgressHUD;


@interface MailView_1 : UIViewController<UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>
{
    IBOutlet UIButton *list;
    IBOutlet UIButton *list1;
    IBOutlet UIButton *list2;
    
    IBOutlet UIButton *no1;
    IBOutlet UIButton *no2;
    IBOutlet UIButton *no3;
    
    IBOutlet UIButton *back;
    IBOutlet UILabel *datebtn;
    IBOutlet UIButton *loginchange;
    IBOutlet UILabel *qlb;
    
    UIView *customView;
    UITableView *tableview;
    UITableView *tableview1;
    NSMutableArray *contactArray;
    NSMutableArray *contactArray1;
    
    UILabel *day;
    UILabel *country;
    UILabel *numbers;
    
    UIDatePicker *datePicker;
    UIButton *button;
    UIButton *send;
    NSInteger table1;
    NSMutableData *responseData;
    NSTimer *timer;
    NSInteger loginval;
    UIAlertView *alert11;
    
    NSInteger countrycounter;
    MBProgressHUD *HUD;

}
@property(nonatomic,retain) UIButton *send;
@property(nonatomic,retain) UILabel *country;
@property(nonatomic,retain) UILabel *numbers;
@property(nonatomic,retain)  UIDatePicker *datePicker;
@property(nonatomic,retain) UIButton *button ;
@property(nonatomic,retain) UIView *customView;
@property(nonatomic,retain) UITableView *tableview;
@property(nonatomic,retain) UITableView *tableview1;
@property(nonatomic,retain) NSMutableArray *contactArray;
@property(nonatomic,retain) NSMutableArray *contactArray1;
@property(nonatomic,retain) UILabel *day;
@property(nonatomic,retain) IBOutlet UILabel *datebtn;
@property(nonatomic,retain) IBOutlet UIButton *list;
@property(nonatomic,retain) IBOutlet UIButton *list1;
@property(nonatomic,retain) IBOutlet UIButton *list2;
@property(nonatomic,retain) IBOutlet UIButton *no1;
@property(nonatomic,retain) IBOutlet UIButton *no2;
@property(nonatomic,retain) IBOutlet UIButton *no3;
@property(nonatomic,retain) IBOutlet UILabel *qlb;
@property(nonatomic,retain) IBOutlet UIButton *loginchange;
@property(nonatomic,retain) IBOutlet UIButton *back;



-(IBAction)gobackview:(id)sender;
-(IBAction)addlistonmenu:(id)sender;
-(IBAction)addlistonmenu1:(id)sender;
-(IBAction)addlistonmenu2:(id)sender;
-(IBAction)addnumberonmenu:(id)sender;
-(IBAction)addnumberonmenu1:(id)sender;
-(IBAction)addnumberonmenu2:(id)sender;
-(IBAction)sendAction:(id)sender;
-(void)showDatePicker;
-(void)longTap;
-(void)loading;
-(void)inwitdownloadhstring;
-(IBAction)changelogin:(id)sender;

@end
