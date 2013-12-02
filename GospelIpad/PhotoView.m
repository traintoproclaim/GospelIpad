//
//  PhotoView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "PhotoView.h"
#import "StartScreen14.h"
#import "MBProgressHUD.h"
#import "GospelIpadViewController.h"
@implementation PhotoView
@synthesize imageView,crop,imageView1,obj,popoverController,imagePicker;
@synthesize btn,btn1,appdel,containerController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
          
   
              
    }
-(IBAction)gobackview:(id)sender
{
    GospelIpadViewController *Controller=[[GospelIpadViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
}
-(IBAction)show:(id)sender
{
    [self show];
}
-(void)viewDidAppear:(BOOL)animated
{
      self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]];
   
  [self show];
    
   
 
       btn.frame=CGRectMake(800, 600, 200, 60);
    btn1.frame=CGRectMake(400, 350, 200, 60);
      
    
}

-(void)show
{
    imagePicker = [[GKImagePicker alloc] init];
   imagePicker.cropSize = CGSizeMake(300, 300);
    imagePicker.delegate = self;
 
   /* UIPopoverController *popoverController1 = [[UIPopoverController alloc]
                              initWithContentViewController:imagePicker.imagePickerController];
      popoverController1.delegate = self;
    
  
   
    CGRect selectedRect = CGRectMake(0,0,1,1);
    [popoverController1 presentPopoverFromRect:selectedRect inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
   [popoverController1 setPopoverContentSize:CGSizeMake(700,700) animated:YES];
    self.popoverController=popoverController1;
    [popoverController1 release];
   
        */
    containerController = [[UIViewController alloc] init];
    containerController.contentSizeForViewInPopover = self.view.frame.size;
    [containerController.view addSubview:imagePicker.imagePickerController.view];
    
    
    self.popoverController = [[UIPopoverController alloc]
                              initWithContentViewController:containerController];
    
    popoverController.delegate = self;
    
    [popoverController presentPopoverFromRect:CGRectMake(0.0, 0.0, 10.0,0.0)
                                       inView:self.view
                     permittedArrowDirections:UIPopoverArrowDirectionAny
                                     animated:YES];
    
    
    
    
    [imagePicker.imagePickerController.view setFrame:containerController.view.frame];

  }

-(IBAction)end:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
-(void)loading
{
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.labelText = @"Loading Page..";
    
    [self.view addSubview:HUD];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self 
                                           selector:@selector(dismissHUD:) userInfo:nil 
                                            repeats:NO];
    
}
- (void)dismissHUD:(id)arg {
    
    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    HUD = nil;
    [timer invalidate];
    
}



# pragma mark -
# pragma mark GKImagePicker Delegate Methods

- (void)imagePicker:(GKImagePicker *)imagePicker pickedImage:(UIImage *)image{
    
    int val= [[NSUserDefaults standardUserDefaults]integerForKey:@"noimge"];
    if(val==1)
    {
        
    }else
    {
    NSData *imageData=UIImageJPEGRepresentation(image, 0.9);
    [[NSUserDefaults standardUserDefaults] setObject:imageData forKey:@"image"];
    
    imageView1.hidden=YES;
    imageView.hidden=YES;
    
    UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Image set successfully " delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    
    [alert1 show];
    [alert1 release];
    }
  [self.navigationController popViewControllerAnimated:NO];
          
    if (popoverController != nil) {
        [popoverController dismissPopoverAnimated:YES];
        popoverController=nil;
    }

}


# pragma mark -
# pragma mark UIImagePickerDelegate Methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo{
    
    [self.navigationController popViewControllerAnimated:NO];
   [picker dismissModalViewControllerAnimated:YES];
      
            [self.popoverController dismissPopoverAnimated:YES];
    

    
}

- (void)imagePickerControllerDidCancel: (UIImagePickerController *) picker {
    
    
    [self dismissModalViewControllerAnimated: YES];
    [self.navigationController popToRootViewControllerAnimated:NO];
    if (popoverController != nil) {
        [popoverController dismissPopoverAnimated:YES];
        popoverController=nil;
    }
}
-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden=YES;
    appdel = (GospelIpadAppDelegate*)[[UIApplication sharedApplication] delegate];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	 return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
