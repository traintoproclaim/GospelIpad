//
//  congoview.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "congoview.h"
#import "GospelIpadViewController.h"
#import "donation.h"
#import "Reachability.h"
#import "RegisterView.h"
#import "MailView_1.h"
#import "JSON.h"
#import "ASIFormDataRequest.h"

@implementation congoview
@synthesize back,lable1,lable2,lable3,lable4,lable5,lable6,next,lable7,lable0;
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
    lable0.font= [UIFont fontWithName:@"Opificio" size:35.f];
    
    lable1.font= [UIFont fontWithName:@"Opificio" size:44.f];
    lable2.font= [UIFont fontWithName:@"Opificio" size:55.f];
    lable3.font= [UIFont fontWithName:@"Opificio" size:35.f];
    lable4.font= [UIFont fontWithName:@"Opificio" size:35.f];
    lable5.font= [UIFont fontWithName:@"Opificio" size:35.f];
    lable6.titleLabel.font= [UIFont fontWithName:@"Opificio" size:35.f];
    lable7.font= [UIFont fontWithName:@"Opificio" size:35.f];
    
    
    
    lable1.frame=CGRectMake(00, 30, 1024, 50);
    lable1.textAlignment=UITextAlignmentCenter;
    
    lable0.frame=CGRectMake(0, 110, 1024, 100);
    lable0.textAlignment=UITextAlignmentCenter;
    
    lable3.frame=CGRectMake(0, 310, 1024, 100);
    lable3.textAlignment=UITextAlignmentCenter;
    
    lable2.frame=CGRectMake(0, 200,1024, 100);
    lable2.textAlignment=UITextAlignmentCenter;
    
    lable7.frame=CGRectMake(0, 440,400, 50);
    lable7.textAlignment=UITextAlignmentCenter;
    lable6.frame=CGRectMake(395, 440, 450, 50);
    lable6.titleLabel.textAlignment=UITextAlignmentCenter;
    lable4.frame=CGRectMake(770, 440, 280, 50);
    lable4.textAlignment=UITextAlignmentCenter;
    lable5.frame=CGRectMake(800, 600, 200,60);
    lable5.textAlignment=UITextAlignmentCenter;
    
    
    
    lable2.numberOfLines=1;
    lable3.numberOfLines=3;
    lable5.numberOfLines=2;
    
    next.frame=CGRectMake(800, 600, 200,60);
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert11 show];
        [alert11 release];
        
        NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
        NSString *str= [valu objectForKey:@"mycountuser"];
        NSLog(@"count %@",str);
        lable2.text=str;
        
    } 
    else 
    { 
        
        [self inwitdownloadhstring];
    }

}
-(void)inwitdownloadhstring
{
    NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
    NSString *name=[val objectForKey:@"user"];
    NSUserDefaults *val1 = [NSUserDefaults standardUserDefaults];
    NSString *name1=[val1 objectForKey:@"newuser"];
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    NSInteger loginval=[valu integerForKey:@"Login"];
    
    
    NSURL *url = [NSURL URLWithString:ServerURL];
    ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
    
	[request1 setPostValue:@"Totalcount" forKey:@"Command"];
    if(loginval==1)
    {
        if(name.length!=0 )
        {
            [request1 setPostValue:name forKey:@"user"];
            NSLog(@"user Name %@",name);
            
        }
    }else
    {
        [request1 setPostValue:name1 forKey:@"user"];
        NSLog(@"user Name %@",name1);
        
        
    }
    
    
    
    [request1 startSynchronous];
    NSError *error = [request1 error];
	if (!error) 
    {
        NSString *response = [request1 responseString];
        NSMutableDictionary *responseJSON = [response JSONValue]; 
        NSString *loginstr=[responseJSON objectForKey:@"Response"];
        NSLog(@"My status :%@",loginstr);
        
        if(loginstr.length!=0)
        {
            NSLog(@"Send Mail Success");
            lable2.text=loginstr;
            NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
            [valu setObject:loginstr forKey:@"mycountuser"];
            NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
            [valu3 setInteger:10 forKey:@"countercountrymail1"];
            [valu3 setInteger:10 forKey:@"countercountrymail2"];
            [valu3 setInteger:10 forKey:@"countercountrymail3"];
            [valu3 setInteger:10 forKey:@"countercountrymail4"];
            [valu3 setInteger:0 forKey:@"countercountry"]; 


            
        }else
        {
            
            NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
            NSString *str= [valu objectForKey:@"mycountuser"];
            lable2.text=str;
            
            UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please try again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert show];
            [alert release];
        }
        
    }
}

-(IBAction)nextview:(id)sender
{
    
    donation *tab1=[[donation alloc]initWithNibName:@"donation" bundle:[NSBundle mainBundle]];	
    
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];   
    
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
-(IBAction)gobackview:(id)sender
{
    
    MailView_1 *backview=[[MailView_1 alloc]initWithNibName:@"MailView_1" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    
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
-(void)viewWillAppear:(BOOL)animated
{
    lable1.hidden=NO;
    lable2.hidden=NO;
    lable3.hidden=NO;
    lable4.hidden=NO;
    lable5.hidden=NO;
    lable6.hidden=NO;
    
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
