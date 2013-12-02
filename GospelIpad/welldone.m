//
//  welldone.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "welldone.h"
#import "StartScreen17.h"
#import "RegisterView.h"
#import "JSON.h"
#import "ASIFormDataRequest.h"
#import "Reachability.h"
#import "MailView_1.h"
#import "QuizView.h"
#import "StartScreen16.h"
#import "GospelIpadViewController.h"
#import "StartScreen18.h"
#import "StartScreen17.h"
#import "MailView.h"


@implementation welldone
@synthesize back,qlb,next,login,pwd,login1,pass,head,head1,head2;
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
    CGRect lb2=CGRectMake(50, 300, 800, 300);
    qlb.frame=lb2;
    head.frame=CGRectMake(390, 20, 700, 70);
    head.font= [UIFont fontWithName:@"Opificio" size:77.f];
    head.text=@"THE END";
    head.textColor=[UIColor blackColor];
    
    head1.frame=CGRectMake(290, 120, 500, 70);
    head1.font= [UIFont fontWithName:@"Opificio" size:65.f];
    head1.text=@"Have a great Day!";
    head.textColor=[UIColor blackColor];
    
    head2.frame=CGRectMake(50, 250, 400, 70);
    head2.font= [UIFont fontWithName:@"Opificio" size:42.f];
    head2.text=@"Note to Presenter:";
    head.textColor=[UIColor blackColor];
    
    qlb.textAlignment=UITextAlignmentLeft;
    qlb.numberOfLines=4;
    
    
    qlb.text=@"Well done! Time to upload your data encouraging other Christians all around the world!";
    qlb.font= [UIFont fontWithName:@"Opificio" size:38.f];
    
    qlb.textColor=[UIColor blackColor];
    next.frame=CGRectMake(800, 600, 200,60);
    login.hidden=YES;
    pwd.hidden=YES;
    login1.hidden=YES;
    pass.hidden=YES;
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"2" forKey:@"link"];
}
-(IBAction)gobackview:(id)sender
{
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    NSString *str=[perf objectForKey:@"catch"];
    
    
    if([str isEqualToString:@"1"])
    {
        
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"0" forKey:@"catch"];
        StartScreen16 *backview=[[StartScreen16 alloc]initWithNibName:@"StartScreen16" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
        NSUserDefaults *bc1=[NSUserDefaults standardUserDefaults];
        NSString *back1=[bc1 objectForKey:@"back"];
        if([back1 isEqualToString:@"2"])
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"2" forKey:@"back"];
            
        }else
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"0" forKey:@"back"];
        }
        
    }
    
    if([str isEqualToString:@"111"])
    {
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"0" forKey:@"catch"];
        
        StartScreen18 *backview=[[StartScreen18 alloc]initWithNibName:@"StartScreen18" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
        
    }
    if([str isEqualToString:@"222"])
    {
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"0" forKey:@"catch"];
        
        StartScreen17 *backview=[[StartScreen17 alloc]initWithNibName:@"StartScreen17" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
        
    }
    if([str isEqualToString:@"333"])
    {
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"0" forKey:@"catch"];
        
        MailView *backview=[[MailView alloc]initWithNibName:@"MailView" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
        
    }
    
    
}
-(IBAction)nextview:(id)sender
{
    qlb.hidden=YES;
    next.hidden=YES;
    
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    loginval=[valu integerForKey:@"Login"];
    if(loginval==0)
    {
        head.hidden=YES;
        head1.hidden=YES;
        head2.hidden=YES;
        qlb.hidden=YES;
        alert11=[[UIAlertView alloc] initWithTitle:@"Whooops ..." message:@"you have not yet logged in so you can't go any further.  Please do so on the next screen." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        alert11.tag=111;
        alert11.delegate=self;
        [alert11 show];
        [alert11 release];
    }else
    {
        head.hidden=YES;
        head1.hidden=YES;
        head2.hidden=YES;
        qlb.hidden=YES;
        
        MailView_1 *tab1=[[MailView_1 alloc]initWithNibName:@"MailView_1" bundle:[NSBundle mainBundle]];            
        [self.navigationController pushViewController:tab1 animated:NO];
        [tab1 release]; 
        
    }
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex 
{ 
    if(alert11.tag==111)
    {   
        login.hidden=NO;
        pwd.hidden=NO;
        head.hidden=YES;
        head1.hidden=YES;
        head2.hidden=YES;
        [self loadloginview];
        
    }
}

-(void)loadloginview
{
    login.frame=CGRectMake(350,100 , 300, 70);
    pwd.frame=CGRectMake(350, 200, 300, 70);
    
    login.delegate=self;
    login.placeholder=@"Enter User Name";
    
    pwd.delegate=self;
    pwd.placeholder=@"Enter Password";
    pwd.secureTextEntry=YES;
    
    login1= [[UIButton alloc]init];
    login1.frame=CGRectMake(400, 350, 200, 60);
    UIImage *bk=[UIImage imageNamed:@"login_btn@1x.png"];
    [login1 setImage:bk forState:UIControlStateNormal];
    [login1 addTarget:nil action:@selector(loginview) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:login1];
    
    pass= [[UIButton alloc]init];
    pass.frame=CGRectMake(800, 650, 200,60);
    UIImage *ps=[UIImage imageNamed:@"register_btn@1x.png"];
    [pass setImage:ps forState:UIControlStateNormal];
    [pass addTarget:nil action:@selector(registerview) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pass];
    
    
    
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
    login.text=nil;
    pwd.text=nil;
    
    
    [self.view addSubview:HUD];
    timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self 
                                           selector:@selector(dismissHUD:) userInfo:nil 
                                            repeats:NO];
    
}
- (void)dismissHUD:(id)arg {
    
    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    HUD = nil;
    alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"Login successful" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert11 show];
    [alert11 release];
    
    MailView_1 *tab1=[[MailView_1 alloc]initWithNibName:@"MailView_1" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release]; 
    [self.login resignFirstResponder];
    [self.pwd resignFirstResponder];
    [timer invalidate];
    
}

-(void)loginview
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert11 show];
        [alert11 release];
        
    } 
    else 
    { 
        
        if(login.text.length==0||login.text==nil || pwd.text.length==0 || pwd.text==nil)
        {
            UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please enter required fields." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert1 show];
            [alert1 release];         
            return;
            
            
        }
        else
        {
            
            NSString *newstr=[NSString stringWithFormat:@"http://html.traintoproclaim.com/gospel/ReceiveUploads.php?Command=Login&user=%@&pwd=%@",login.text,pwd.text];
            
            responseData = [[NSMutableData data] retain];		
            NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:newstr]];
            [[NSURLConnection alloc] initWithRequest:request delegate:self];
            if(responseData==nil)
            {
                NSLog(@"Nothing came from webservice");
            } 
        }
        
    }
    
    
}
-(void)registerview
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert11 show];
        [alert11 release];
        
    } 
    else 
    { 
        RegisterView *tab1=[[RegisterView alloc]initWithNibName:@"RegisterView" bundle:[NSBundle mainBundle]];	
        
        [self.navigationController pushViewController:tab1 animated:NO];
        [tab1 release];  
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [self.login resignFirstResponder];
    [self.pwd resignFirstResponder];
    return YES;
    
}
- (void)textFieldDidEndEditing:(UITextField *)textField 
{
    
    textField=login;
    textField=pwd;
}   

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
	[responseData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
	[responseData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
	
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {		
	[connection release];
    
	NSString *responseString =[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
    
	[responseData release];
	NSLog(@"Response String %@",responseString);
    
    [self inwitdownloadhstring];
    
    
}
-(void)inwitdownloadhstring
{
    
    NSURL *url = [NSURL URLWithString:ServerURL];
    ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
    
	[request1 setPostValue:@"Login" forKey:@"Command"];
    
    [request1 setPostValue:login.text forKey:@"user"];
    [request1 setPostValue:pwd.text forKey:@"pwd"];
    
    [request1 startSynchronous];
    NSError *error = [request1 error];
	if (!error) 
    {
        NSString *response = [request1 responseString];
        NSMutableDictionary *responseJSON = [response JSONValue]; 
        NSString *loginstr=[responseJSON objectForKey:@"Response"];
        NSString *loginstr1=[responseJSON objectForKey:@"Country"];
        NSString *loginstr2=[responseJSON objectForKey:@"Count"];
        
        NSLog(@"My status :%@",loginstr);
        NSLog(@"My Country :%@",loginstr1);
        NSLog(@"My Count :%@",loginstr2);
        
        NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
        [valu setObject:loginstr2 forKey:@"mycountuser"];
        
        if([loginstr isEqualToString:@"success"])
        {
            if (loginstr1.length!=0&&loginstr1!=nil) 
            {
                NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
                [val setObject:loginstr1 forKey:@"country"];
            }
            
            
            NSLog(@"Login Success");
            
            NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
            [valu setInteger:1 forKey:@"Login"];
            
            NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
            [val setObject:login.text forKey:@"user"];
            
            [self loading];
            
            
        }else
        {
            alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"User Name or Password not valid." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert11 show];
            [alert11 release];
            
            NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
            [valu setInteger:0 forKey:@"Login"];
        }
        
    }
}
-(void)viewWillAppear:(BOOL)animated
{
    qlb.hidden=NO;
    next.hidden=NO;
    login.hidden=YES;
    pwd.hidden=YES;
    login1.hidden=YES;
    pass.hidden=YES;
    head.hidden=NO;
    head1.hidden=NO;
    head2.hidden=NO;
    
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
