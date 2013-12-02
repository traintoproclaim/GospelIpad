//
//  GospelIpadAppDelegate.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GospelIpadViewController;
#define ServerURL @"http://html.traintoproclaim.com/gospel/ReceiveUploads.php?"
@interface GospelIpadAppDelegate : UIResponder <UIApplicationDelegate>
{
     UINavigationController *navController;
    NSMutableData *responseData;
    NSMutableArray *arr;
    NSInteger newcount;
    NSInteger newcount1;
    NSInteger newcount2;
    
    NSInteger newcount3;
    
    
    NSArray *arr1;
    NSString *username1;
    NSString *username2;
    NSString *username3;
    NSString *username4;
    NSString *email1;
    NSString *email2;
    NSString *email3;
    NSString *email4;
    NSInteger id1;
    NSInteger id2; 
    NSInteger id3;
    NSInteger id4;
    NSInteger value;
    NSInteger value1;
     UIViewController *containerController ;
}
 @property(nonatomic,retain)UIViewController *containerController ;
@property(nonatomic,readwrite)NSInteger id1;
@property(nonatomic,readwrite)NSInteger id2;
@property(nonatomic,readwrite)NSInteger id3;
@property(nonatomic,readwrite)NSInteger id4;
@property(nonatomic,retain)NSString *username1;
@property(nonatomic,retain)NSString *username2;
@property(nonatomic,retain)NSString *username3;
@property(nonatomic,retain)NSString *username4;
@property(nonatomic,retain)NSString *email1;
@property(nonatomic,retain)NSString *email2;
@property(nonatomic,retain)NSString *email3;
@property(nonatomic,retain)NSString *email4;
@property (nonatomic, retain)NSArray *arr1;
@property (nonatomic, retain) NSMutableArray *arr;

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navController;
@property (strong, nonatomic) GospelIpadViewController *viewController;
-(void)value;
-(void)value1;
-(void)value2;
-(void)value3;
-(void)value4;
-(void)countryNumber;
@end
