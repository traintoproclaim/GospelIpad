//
//  StartScreen18.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen18.h"
#import "welldone.h"
#import "GospelIpadViewController.h"
#import "GospelIpadAppDelegate.h"
#import "StartScreen17.h"


@implementation StartScreen18
@synthesize qlb,next,email,send,back,audiname,presentername;
@synthesize alert;

int val18=1;

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
    CGRect lb2=CGRectMake(10, 150, 1000, 400);
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]]; 
    qlb.frame=lb2;
    qlb.textAlignment=UITextAlignmentCenter;
    qlb.numberOfLines=12;
    qlb.textColor=[UIColor blackColor];
    qlb.font= [UIFont fontWithName:@"Opificio" size:34.f];
    qlb.text=@"Great, you are ready to surrender to Jesus! We have put together a prayer for you, which will help you start your new life as a Christian and your relationship with Jesus. It is not saying a particular set of words that is important but rather what is happening in your heart. You can say your own prayer if you like. The important thing is to ask for forgiveness, invite Jesus into your life and in your heart surrender everything over to Him.";    
    email.delegate=self;
    email.placeholder=@"Enter E-mail Address";
    email.frame=CGRectMake(350, 400, 300, 70);
    audiname.frame=CGRectMake(350, 300, 300, 70);
    presentername.frame=CGRectMake(350, 500, 300, 70);
    
    
    audiname.autocapitalizationType = UITextAutocapitalizationTypeSentences;
    audiname.delegate=self;
    audiname.placeholder=@"Enter Name";
    audiname.hidden=YES;
    
    presentername.delegate=self;
    presentername.placeholder=@"Enter Presenter Email";
    presentername.hidden=YES;
    
    send=[UIButton buttonWithType:UIButtonTypeCustom];
    send.frame=CGRectMake(400, 600, 200,60);
    
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateNormal];
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateHighlighted];
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateSelected];
    
    [send addTarget:self action:@selector(sendAction:) forControlEvents:UIControlEventTouchUpInside];
    [send setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:send];
    [self.view bringSubviewToFront:send];
     next.frame = CGRectMake(800, 650, 200,60);
    
    email.hidden=YES;
    audiname.hidden=YES;
    send.hidden=YES;
    audiname.tag=1;
    email.tag=2;
    presentername.tag=3;
    next.hidden=YES;

}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    qlb.hidden=NO;
    val18=1;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (val18)
    {
        case 1:
            
            qlb.text=@"Dear Jesus, thank you for dying on the cross to take the punishment I deserve, for breaking Your laws. I can't thank You enough. Words cannot describe the amazing love You have shown me. I want to become a Christian right now. Please give me Your perfect record. I want to turn from everything I know to be wrong and fully commit myself to following You. Holy Spirit, I invite You to come into me, to change my life and empower me to live for God. Amen.";
            val18=2;
            break;
        case 2: NSLog(@"Hi");
            
            CGRect lb2=CGRectMake(20, 10, 990, 400);
            qlb.frame=lb2;

            qlb.text=@"Please let me know your email address so that we can stay in touch and so I can send you a free e-book with more information on following Jesus. ";
            email.hidden=NO;
            audiname.hidden=NO;
            send.hidden=NO;
            next.hidden=NO;
            presentername.hidden=NO;
            break;
    }
}
-(IBAction)sendAction:(id)sender
{
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    countnew=[valu3 integerForKey:@"countemail"];
    NSLog(@"count remain %d",countnew);
    
    
    GospelIpadAppDelegate *appDelegate = (GospelIpadAppDelegate*)[[UIApplication sharedApplication] delegate];
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        
        NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
        [valu setInteger:1 forKey:@"offline"];
        
        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
        [valu3 setInteger:3 forKey:@"id3"];
        
        
        NSLog(@"No internet connection!");   
        if(countnew>=4)
        {
            NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
            [valu3 setInteger:countnew forKey:@"countemail"]; 
            alert11=[[UIAlertView alloc] initWithTitle:@"Sorry." message:@"You have already entered 4 email addresses so this cannot be sent.  Please make a note of this email address and add here when you are online" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            alert11.tag=1;
            alert11.delegate=self;
            
            [alert11 show];
            [alert11 release];
            return;
            email.text=nil;
            audiname.text=nil;
            presentername.text=nil;
            [self.email resignFirstResponder];
            [self.audiname resignFirstResponder];
            
        }else
        {
            if(countnew==0)
            {
                NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                [valu1 setObject:audiname.text forKey:@"user130"];
                
                
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:email.text forKey:@"email130"];
                appDelegate.email1=email.text; 
                
                NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
                [valu4 setObject:presentername.text forKey:@"email1130"];
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:countnew forKey:@"countemail13"];
                NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                [va setInteger:countnew forKey:@"countemail"]; 
                
                alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of extra email addresses and add when you are online." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                alert11.tag=1;
                alert11.delegate=self;
                
                [alert11 show];
                [alert11 release];
                
                
            }
            if(countnew==1)
            {
                
                NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                [valu1 setObject:audiname.text forKey:@"user141"];
                
                
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:email.text forKey:@"email141"];
                NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
                [valu4 setObject:presentername.text forKey:@"email1141"];
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:countnew forKey:@"countemail14"];
                NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                [va setInteger:countnew forKey:@"countemail"]; 
                alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of extra email addresses and add when you are online." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                alert11.tag=1;
                alert11.delegate=self;
                
                [alert11 show];
                [alert11 release];
                
            }
            if(countnew==2)
            {
                
                NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                [valu1 setObject:audiname.text forKey:@"user152"];
                
                
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:email.text forKey:@"email152"];
                NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
                [valu4 setObject:presentername.text forKey:@"email1152"];
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:countnew forKey:@"countemail15"];
                NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                [va setInteger:countnew forKey:@"countemail"]; 
                
                alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of extra email addresses and add when you are online." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                alert11.tag=1;
                alert11.delegate=self;
                
                [alert11 show];
                [alert11 release];
            }
            if(countnew==3)
            {
                
                NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                [valu1 setObject:audiname.text forKey:@"user163"];
                
                
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:email.text forKey:@"email163"];
                
                NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
                [valu4 setObject:presentername.text forKey:@"email1163"];
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:countnew forKey:@"countemail16"];
                
                NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                [va setInteger:countnew forKey:@"countemail"]; 
                alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of extra email addresses and add when you are online." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                alert11.tag=1;
                alert11.delegate=self;
                
                [alert11 show];
                [alert11 release];
                
            }
            countnew++;
            NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
            [va setInteger:countnew forKey:@"countemail"]; 
            
        }
        email.text=nil;
        audiname.text=nil;
        presentername.text=nil;
        [self.email resignFirstResponder];
        [self.audiname resignFirstResponder];
        
        
        
    } else
    {
        NSString *k=audiname.text;
        
        NSString *space=[k stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(email.text.length!=0 && space.length!=0)
        {
            BOOL isValidMail = [self validateEmail:email.text];
            BOOL isValidMail1 = [self validateEmail:presentername.text];
            if (isValidMail)
            {
                if(isValidMail1)
                {
                    [self inwitdownloadhstring];
                }else
                {
                    [self inwitdownloadhstring];
                }
            }
            else
            {
                UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please provide valid  email address" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                
                
                [alert1 show];
                [alert1 release]; 
                
            }
            
        }else
        {
            
            
            
            UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please enter required fields." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert1 show];
            [alert1 release];
        }
        
        
    }
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex 
{ 
    if(alert11.tag==1)
    {
        welldone *ta=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
        [self.navigationController pushViewController:ta animated:NO];
        [ta release];   
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [self.email resignFirstResponder];
    [self.audiname resignFirstResponder];
    [self.presentername resignFirstResponder];
    return YES;
    
}
-(void)textFieldDidBeginEditing:(UITextField *)textField 
{ 
    
    [self animateTextField:textField up:YES];
    
}
- (void)textFieldDidEndEditing:(UITextField *)textField 
{
    
    [self animateTextField:textField up:NO];
    textField=email;
    textField=audiname;
    textField=presentername;
    
} 
-(void)animateTextField:(UITextField*)textField up:(BOOL)up
{
    const int movementDistance = -90; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? movementDistance : -movementDistance); 
    
    [UIView beginAnimations: @"animateTextField" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}
-(BOOL)validateEmail:(NSString *) candidate {
	
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"; 
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex]; 
    
    return [emailTest evaluateWithObject:candidate];
}
-(BOOL)validateEmail1:(NSString *) candidate {
	
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"; 
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex]; 
    
    return [emailTest evaluateWithObject:candidate];
}

-(IBAction)gobackview:(id)sender
{
    
    StartScreen17 *backview=[[StartScreen17 alloc]initWithNibName:@"StartScreen17" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)inwitdownloadhstring
{
    
    NSURL *url = [NSURL URLWithString:ServerURL];
    ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
    
	[request1 setPostValue:@"Sendmail" forKey:@"Command"];
    
    [request1 setPostValue:email.text forKey:@"email"];
    [request1 setPostValue:@"3" forKey:@"sub"];
    [request1 setPostValue:audiname.text forKey:@"name"];
    [request1 setPostValue:presentername.text forKey:@"ccemail"];
    
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
            UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please try again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert1 show];
            [alert1 release];
        }
        
    }
}

-(void)loading
{
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.labelText = @"Loading Page..";
    
    [self.view addSubview:HUD];
    email.text=nil;
    audiname.text=nil;
    presentername.text=nil;
    [self.email resignFirstResponder];
    [self.audiname resignFirstResponder];
    [self.presentername resignFirstResponder];
    
    
    timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self 
                                           selector:@selector(dismissHUD:) userInfo:nil 
                                            repeats:NO];
    
}
- (void)dismissHUD:(id)arg {
    
    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    HUD = nil;
    [timer invalidate];
    UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Mail Sent Successfully. " message:@"Have a great day!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    
    [alert1 show];
    [alert1 release];
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"111" forKey:@"catch"];
    
    welldone *ta=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:ta animated:NO];
    [ta release]; 
    
}

-(void)longTap
{
    NSLog(@"Long Press");
    GospelIpadViewController *Controller=[[GospelIpadViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(IBAction)nextview1:(id)sender
{
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"111" forKey:@"catch"];
    welldone *tab1=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];    
    
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
