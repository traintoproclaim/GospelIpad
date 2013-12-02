//
//  PhotoView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen14.h"
#import "MBProgressHUD.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import "GKImagePicker.h"
#import "GospelIpadAppDelegate.h"

@class MBProgressHUD;

@interface PhotoView : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIPopoverControllerDelegate,GKImagePickerDelegate>
{
    UIImageView * imageView;
    UIImageView * imageView1;
    UIButton *crop;
    NSTimer *timer;
    
    StartScreen14 *obj;
    MBProgressHUD *HUD;
     UIPopoverController *popoverController;
    IBOutlet UIButton *btn;
    IBOutlet UIButton *btn1;
    GospelIpadAppDelegate *appdel;
    UIViewController *containerController ;
    
}
@property (nonatomic, retain)GospelIpadAppDelegate *appdel;
@property (nonatomic, retain) UIViewController *containerController ;
@property (nonatomic, retain)IBOutlet UIButton *btn1;
@property (nonatomic, retain)IBOutlet UIButton *btn;
@property (nonatomic, strong) GKImagePicker *imagePicker;

@property (nonatomic, strong)UIPopoverController *popoverController;
@property (nonatomic, retain) StartScreen14 *obj;
@property (nonatomic, retain) UIImageView * imageView;
@property (nonatomic, retain) UIImageView * imageView1;
@property (nonatomic, retain) UIButton *crop;


-(void)loading;
CGRect transformCGRectForUIImageOrientation(CGRect source, UIImageOrientation orientation, CGSize imageSize);

-(IBAction)show:(id)sender;
-(IBAction)end:(id)sender;
-(IBAction)gobackview:(id)sender;
-(void)show;
@end
