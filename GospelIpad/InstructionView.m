//
//  InstructionView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "InstructionView.h"
#import "GospelIpadViewController.h"
#import "RegisterView.h"
#import "Reachability.h"
#import "QuizView.h"


@implementation InstructionView
@synthesize next,inst,data,back,data1,data2,data3,data4;
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
    
    
    CGRect lb1=CGRectMake(0, 15,1024 , 88);
    CGRect bt1=CGRectMake(700, 600, 200, 60);
    inst.frame=lb1;
    inst.textAlignment=UITextAlignmentCenter;
    inst.font= [UIFont fontWithName:@"Opificio" size:44.f];
    data.frame=CGRectMake(0, 20,1024, 500);
    data.textAlignment=UITextAlignmentCenter;
    data.numberOfLines=8;
    data1.frame=CGRectMake(170, 450, 100, 60);
    data2.frame=CGRectMake(240, 450,500, 60);
    data3.frame=CGRectMake(720, 450, 90, 60);
    data.font= [UIFont fontWithName:@"Opificio" size:34.f];
    data1.font= [UIFont fontWithName:@"Opificio" size:34.f];
    data2.titleLabel.font= [UIFont fontWithName:@"Opificio" size:36.f];
    data3.font= [UIFont fontWithName:@"Opificio" size:34.f];
    data4.font= [UIFont fontWithName:@"Opificio" size:34.f];
    data4.frame=CGRectMake(210, 490, 700, 60);
    next.frame=bt1;

}
-(IBAction)link:(id)sender
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert11 show];
        [alert11 release];
        
    } 
    else 
    { 
        
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"1" forKey:@"link"];
        RegisterView *tab1=[[RegisterView alloc]initWithNibName:@"RegisterView" bundle:[NSBundle mainBundle]];	
        
        [self.navigationController pushViewController:tab1 animated:NO];
        [tab1 release];  
    }
}
-(IBAction)QuizView:(id)sender
{
    QuizView *tab1=[[QuizView alloc]initWithNibName:@"QuizView" bundle:[NSBundle mainBundle]];	
    
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release]; 
    
    
    
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
