//
//  CreditView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "CreditView.h"

@implementation CreditView
@synthesize back,lable1,lable2,lable3,lable4,lable5,lable6,lable7,lable8;
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
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]];
    lable1.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable2.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable3.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable4.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable5.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable6.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable7.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable8.font= [UIFont fontWithName:@"Opificio" size:34.f];
    
    
    lable1.frame=CGRectMake(0, 30, 1024, 300);
    lable1.textAlignment=UITextAlignmentCenter;
    lable2.frame=CGRectMake(0, 150, 1024, 300);
    lable2.textAlignment=UITextAlignmentCenter;
    lable7.frame=CGRectMake(0, 360, 1024, 100);
    lable7.textAlignment=UITextAlignmentCenter;
    lable2.textAlignment=UITextAlignmentCenter;

    lable6.frame=CGRectMake(200, 480, 400, 60);
    lable3.frame=CGRectMake(470, 483, 400, 50);
    lable8.frame=CGRectMake(0, 540, 1024, 60);
    lable4.frame=CGRectMake(110, 600, 400, 60);
    lable8.textAlignment=UITextAlignmentCenter;
    lable5.frame=CGRectMake(450, 600, 400, 50);
    
    lable1.numberOfLines=2;
    lable2.numberOfLines=5;
    lable4.numberOfLines=4;

}
-(IBAction)link:(id)sender
{Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection !!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert11 show];
        [alert11 release];
        
    } 
    else 
    { 
        
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"3" forKey:@"link"];
        RegisterView *tab1=[[RegisterView alloc]initWithNibName:@"RegisterView" bundle:[NSBundle mainBundle]];	
        
        [self.navigationController pushViewController:tab1 animated:NO];
        [tab1 release];  
    }
}
-(IBAction)link1:(id)sender
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection !!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert11 show];
        [alert11 release];
        
    } 
    else 
    { 
        
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"4" forKey:@"link"];
        RegisterView *tab1=[[RegisterView alloc]initWithNibName:@"RegisterView" bundle:[NSBundle mainBundle]];	
        
        [self.navigationController pushViewController:tab1 animated:NO];
        [tab1 release];  
    }
}

-(IBAction)gobackview:(id)sender
{
    GospelIpadViewController *Controller=[[GospelIpadViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
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
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
