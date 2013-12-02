//
//  MailView.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "MailView.h"
#import "MailView_1.h"
#import "welldone.h"
#import "JSON.h"
#import "ASIFormDataRequest.h"
#import "Reachability.h"
#import "GospelIpadViewController.h"
#import "GospelIpadAppDelegate.h"
#import "Extra10.h"


@implementation MailView
@synthesize email,lable1,send,back,next1,audiname;


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
    lable1=[[UILabel alloc]init];
    lable1.frame=CGRectMake(40, 80, 950, 150);
    lable1.text=@"That’s great! So what are you doing to share the Gospel with others?	Are you interested in links to this APP and free evangelism resources to help you?";
    lable1.font= [UIFont fontWithName:@"Opificio" size:40.f];
    lable1.numberOfLines=3;
    lable1.textColor=[UIColor blackColor];
    lable1.textAlignment=UITextAlignmentCenter;
    lable1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable1];
    
    email.delegate=self;
    audiname.delegate=self;
    audiname.placeholder=@"Enter Name";
    email.placeholder=@"Enter E-mail Address";
    email.frame=CGRectMake(350, 400, 300, 70);
    audiname.frame=CGRectMake(350, 300, 300, 70);
    audiname.autocapitalizationType = UITextAutocapitalizationTypeSentences;
    
    next1.frame = CGRectMake(800, 600, 200,60);
    
    send=[UIButton buttonWithType:UIButtonTypeCustom];
    send.frame=CGRectMake(400, 550, 200,60);
    
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateNormal];
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateHighlighted];
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateSelected];
    
    [send addTarget:self action:@selector(sendAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [send setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:send];
    [self.view bringSubviewToFront:send];
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"catch"];
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
    lable1.text=@"That’s great! So what are you doing to share the Gospel with others?	Are you interested in links to this APP and free evangelism resources to help you?";   
    
    email.text=nil;
    audiname.text=nil;
    [self.email resignFirstResponder];
    [self.audiname resignFirstResponder];
    
    [self.view addSubview:HUD];
    timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self 
                                           selector:@selector(dismissHUD:) userInfo:nil 
                                            repeats:NO];
    
}
- (void)dismissHUD:(id)arg {
    
    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    HUD = nil;
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Mail Sent Successfully " message:@"Have a great day!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    
    [alert show];
    [alert release];
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"333" forKey:@"catch"];
    tab1=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];   
    [timer invalidate];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [self.email resignFirstResponder];
    [self.audiname resignFirstResponder];
    return YES;
    
}
- (void)textFieldDidEndEditing:(UITextField *)textField 
{
    [self animateTextField:textField up:NO];
    textField=email;
    textField=audiname;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField 
{ 
    [self animateTextField:textField up:YES]; 
}
-(void)animateTextField:(UITextField*)textField up:(BOOL)up
{
    const int movementDistance = -130; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? movementDistance : -movementDistance); 
    
    [UIView beginAnimations: @"animateTextField" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}
-(IBAction)gobackview:(id)sender
{
    Extra10 *backview=[[Extra10 alloc]initWithNibName:@"Extra10" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lable1.hidden=NO;
    email.hidden=NO;
    send.hidden=NO;
    
    
}
-(IBAction)nextview:(id)sender
{
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"333" forKey:@"catch"];
    welldone *ta=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:ta animated:NO];
    [ta release];    
    
}
-(IBAction)sendAction:(id)sender
{
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    count=[valu3 integerForKey:@"countemail"]; 
    NSLog(@"Remain count %d",count);
    GospelIpadAppDelegate *appDelegate = (GospelIpadAppDelegate*)[[UIApplication sharedApplication] delegate];
    
    NSString *k=audiname.text;
    
    NSUserDefaults *currentDefaults = [NSUserDefaults standardUserDefaults];
    NSData *dataRepresentingSavedArray = [currentDefaults objectForKey:@"savedArray"];
    if (dataRepresentingSavedArray != nil)
    {
        NSArray *oldSavedArray = [NSKeyedUnarchiver unarchiveObjectWithData:dataRepresentingSavedArray];
        if (oldSavedArray != nil)
            appDelegate.arr = [[NSMutableArray alloc] initWithArray:oldSavedArray];
        else
            appDelegate.arr=[[NSMutableArray alloc]init];
    }
    
    
    NSString *space=[k stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    BOOL isValidMail = [self validateEmail:email.text];
    if(email.text.length!=0 && space.length!=0)
    {
        
        if (isValidMail)
        {
            NSLog(@"count value %d",count);
            Reachability *reach = [Reachability reachabilityForInternetConnection];	
            NetworkStatus netStatus = [reach currentReachabilityStatus];    
            if (netStatus == NotReachable) 
            {        
                NSLog(@"No internet connection!"); 
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"offline"];
                
                NSInteger str=[valu integerForKey:@"offline"];
                NSLog(@"OFF Line Mode : %d",str);
                
                NSUserDefaults *valu4 = [NSUserDefaults standardUserDefaults];
                [valu4 setInteger:5 forKey:@"id5"];
                
                
                
                
                if(count>=4)
                {
                    
                    NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                    [va setInteger:count forKey:@"countemail"]; 
                    alert11=[[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have already entered 4 email addresses so this cannot be sent. Please make a note of this email address and enter it again here when next online." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                    alert11.tag=1;
                    alert11.delegate=self;
                    [alert11 show];
                    [alert11 release];
                    return;
                    email.text=nil;
                    audiname.text=nil;
                    [self.email resignFirstResponder];
                    [self.audiname resignFirstResponder];
                }else
                {
                    
                    if(count==0)
                    {
                        appDelegate.username1=audiname.text; 
                        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                        [valu1 setObject:appDelegate.username1 forKey:@"user0"];
                        
                        appDelegate.email1=email.text; 
                        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                        [valu2 setObject:appDelegate.email1 forKey:@"email0"];
                        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                        [valu3 setInteger:count forKey:@"countemail1"]; 
                        NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                        [va setInteger:count forKey:@"countemail"]; 
                        alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of additional email addresses. Please note that you need to reload this App once online for this email to send." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                        alert11.tag=1;
                        alert11.delegate=self;
                        
                        [alert11 show];
                        [alert11 release];
                        
                        
                    }
                    if(count==1)
                    {
                        appDelegate.username2=audiname.text; 
                        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                        [valu1 setObject:appDelegate.username2 forKey:@"user1"];
                        
                        appDelegate.email2=email.text; 
                        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                        [valu2 setObject:appDelegate.email2 forKey:@"email1"];
                        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                        [valu3 setInteger:count forKey:@"countemail2"]; 
                        NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                        [va setInteger:count forKey:@"countemail"]; 
                        alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of additional email addresses. Please note that you need to reload this App once online for this email to send." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                        alert11.tag=1;
                        alert11.delegate=self;
                        
                        [alert11 show];
                        [alert11 release];
                        
                    }
                    if(count==2)
                    {
                        appDelegate.username3=audiname.text; 
                        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                        [valu1 setObject:appDelegate.username3 forKey:@"user2"];
                        
                        appDelegate.email3=email.text; 
                        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                        [valu2 setObject:appDelegate.email3 forKey:@"email2"];
                        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                        [valu3 setInteger:count forKey:@"countemail3"]; 
                        NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                        [va setInteger:count forKey:@"countemail"]; 
                        alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of additional email addresses. Please note that you need to reload this App once online for this email to send." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                        alert11.tag=1;
                        alert11.delegate=self;
                        
                        [alert11 show];
                        [alert11 release];
                        
                        
                    }
                    if(count==3)
                    {
                        appDelegate.username4=audiname.text; 
                        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                        [valu1 setObject:appDelegate.username4 forKey:@"user3"];
                        
                        appDelegate.email4=email.text; 
                        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                        [valu2 setObject:appDelegate.email4 forKey:@"email3"];
                        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                        [valu3 setInteger:count forKey:@"countemail4"]; 
                        NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                        [va setInteger:count forKey:@"countemail"]; 
                        alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of additional email addresses. Please note that you need to reload this App once online for this email to send." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                        alert11.tag=1;
                        alert11.delegate=self;
                        
                        [alert11 show];
                        [alert11 release];
                        
                    }
                    count++;
                    
                    NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                    [va setInteger:count forKey:@"countemail"]; 
                    
                }
                
                
                
                email.text=nil;
                audiname.text=nil;
                [self.email resignFirstResponder];
                [self.audiname resignFirstResponder];
                
                
            } 
            else 
            {
                [self inwitdownloadhstring];
            }
            
            
            
            
            
        }else
        {
            UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please provide valid email address" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert show];
            [alert release];
        }
    }else
    {
        UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please enter required fields." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert1 show];
        [alert1 release];
    }
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex 
{ 
    if(alert11.tag==1)
    {
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"333" forKey:@"catch"];
        tab1=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
        [self.navigationController pushViewController:tab1 animated:NO];
        [tab1 release];   
    }
}

-(BOOL)validateEmail:(NSString *) candidate {
	
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"; 
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex]; 
    
    return [emailTest evaluateWithObject:candidate];
}
-(void)inwitdownloadhstring
{
    NSURL *url = [NSURL URLWithString:ServerURL];
    ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
    
	[request1 setPostValue:@"Sendmail" forKey:@"Command"];
    
    [request1 setPostValue:email.text forKey:@"email"];
    [request1 setPostValue:@"5" forKey:@"sub"];
    [request1 setPostValue:audiname.text forKey:@"name"];
    
    [request1 startSynchronous];
    NSError *error = [request1 error];
	if (!error) 
    {
        NSString *response = [request1 responseString];
        NSMutableDictionary *responseJSON = [response JSONValue]; 
        NSString *loginstr=[responseJSON objectForKey:@"Response"];
        NSLog(@"My status :%@",loginstr);
        
        if([loginstr isEqualToString:@"Success"])
        {
            NSLog(@"Send Mail Success");
            [self loading];
            
        }else
        {
            UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please try again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert show];
            [alert release];
        }
        
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
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);}

@end
