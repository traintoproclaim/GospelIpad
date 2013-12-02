//
//  RegisterView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "RegisterView.h"
#import "MBProgressHUD.h"
#import "QuizView.h"
#import "GospelIpadViewController.h"

@implementation RegisterView
@synthesize web,link,backbg,back;
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
    self.navigationController.navigationBarHidden=NO;
    
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    NSString *str= [perf objectForKey:@"link"];
    if([str isEqualToString:@"1"])
    {
        link=@"http://www.traintoproclaim.com/";  
    }
    if([str isEqualToString:@"2"])
    {
        link=@"http://www.traintoproclaim.com/index.php?option=com_wrapper&Itemid=64";
    }
    if([str isEqualToString:@"3"])
    {
        link=@"http://createmilk.com.au/";
    }
    
    if([str isEqualToString:@"4"])
    {
        link=@"http://www.anuvasoft.com/";
    }
    
    NSURL *url = [NSURL URLWithString:link];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    web.frame=CGRectMake(0, 0, 1024, 1068);
    [web loadRequest:requestObj];
    web.backgroundColor=[UIColor blackColor];
    [self loading];

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
}  
-(void)longTap
{
    NSLog(@"Long Press");
    GospelIpadViewController *Controller=[[GospelIpadViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)loading
{
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.labelText = @"Loading Page..";
    
    [self.view addSubview:HUD];
    timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self 
                                           selector:@selector(dismissHUD:) userInfo:nil 
                                            repeats:NO];
    
}
- (void)dismissHUD:(id)arg {
    
    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    HUD = nil;
    [timer invalidate];
    
}
- (IBAction)backView:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
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
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);}

@end
