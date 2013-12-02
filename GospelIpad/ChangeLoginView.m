//
//  ChangeLoginView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ChangeLoginView.h"
#import "RegisterView.h"
#import "JSON.h"
#import "ASIFormDataRequest.h"
#import "Reachability.h"
@implementation ChangeLoginView
@synthesize back,qlb,next,login,pwd,login1,pass;
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
    [self loadloginview];
    CGRect lb2=CGRectMake(0,15,1024,100);
    qlb.frame=lb2;
    qlb.textAlignment=UITextAlignmentCenter;
    qlb.numberOfLines=2;
    qlb.font= [UIFont fontWithName:@"Opificio" size:34.f];

}
-(void)loadloginview
{
    login.frame=CGRectMake(350, 200, 300, 70);
    pwd.frame=CGRectMake(350, 300, 300, 70);
    
    login.delegate=self;
    login.placeholder=@"Enter User Name";
    
    pwd.delegate=self;
    pwd.placeholder=@"Enter Password";
    pwd.secureTextEntry=YES;
    
    login1= [[UIButton alloc]init];
    login1.frame=CGRectMake(400, 450, 200, 60);
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
-(void)loading
{
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.labelText = @"Loading Page..";
    
    [self.view addSubview:HUD];
    timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self 
                                           selector:@selector(dismissHUD:) userInfo:nil 
                                            repeats:NO];
    
}
- (void)dismissHUD:(id)arg {
    
    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    HUD = nil;
    login.text=nil;
    pwd.text=nil;
    UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"Login successful" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert11 show];
    [alert11 release];
    [timer invalidate];
    
}

-(void)loginview
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
        if(login.text.length==0||login.text==nil || pwd.text.length==0 || pwd.text==nil)
        {
            UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please enter required fields." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert1 show];
            [alert1 release];         
            return;
            
            
        }
        else
        {
            
            NSString *str = login.text;
            NSString *str1 = pwd.text;
            // NSString *str=@"01-03";
            NSString *newstr=[NSString stringWithFormat:@"http://html.traintoproclaim.com/gospel/ReceiveUploads.php?Command=Login&user=%@&pwd=%@",str,str1];
            
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
{Reachability *reach = [Reachability reachabilityForInternetConnection];	
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
        [perf setObject:@"2" forKey:@"link"];
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
            qlb.text=[NSString stringWithFormat:@"You are logged in as %@",login.text];
            
            NSUserDefaults *val1 = [NSUserDefaults standardUserDefaults];
            [val1 setObject:login.text forKey:@"newuser"];
            
            [self loading];
            
            
        }else
        {
            UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"User Name or Password not valid." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert11 show];
            
            NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
            [valu setInteger:0 forKey:@"Login"];
        }
        
    }
}
-(IBAction)gobackview:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
-(void)viewWillAppear:(BOOL)animated
{
    NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
    NSString *name=[val objectForKey:@"user"];
    
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    loginval=[valu integerForKey:@"Login"];
    NSLog(@"login detail %d",loginval);
    if(loginval==1)
    {
        if(name.length!=0 )
        {
            
            qlb.text=[NSString stringWithFormat:@"You are logged in as %@",name];
        }else
        {
            qlb.text=@""; 
        }
    }else
    {
        qlb.text=@"";  
    }
    
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
