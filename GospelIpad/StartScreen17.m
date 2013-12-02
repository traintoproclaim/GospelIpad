//
//  StartScreen17.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen17.h"
#import "MailView_1.h"
#import "welldone.h"
#import "MBProgressHUD.h"
#import "GospelIpadViewController.h"
#import "GospelIpadAppDelegate.h"
#import "StartScreen18.h"
#import "StartScreen16.h"
@implementation StartScreen17
@synthesize qlb,_button1,_button2,flb,slb,next,email,send,back,next1,audiname,presentername;
@synthesize quizlb,alert,send1;

int clickbutton1;
int clickbutton2;
int clickbutton3;
int clickbutton4;
int clickbutton5;
int clickButton;


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
    check1=NO;
    check2=NO;
    count=0;
    
    clickbutton1=0;
    clickbutton2=0;
    _button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button1.adjustsImageWhenHighlighted = NO; 
    [_button1 addTarget:self action:@selector(radiobuttoncheck1:) forControlEvents:UIControlEventTouchUpInside];
    _button1.backgroundColor=[UIColor clearColor];
    
    _button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button2.adjustsImageWhenHighlighted = NO; 
    [_button2 addTarget:self action:@selector(radiobuttoncheck2:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    
    _button1.frame = CGRectMake(320,400,190,41);
    _button2.frame = CGRectMake(320,500,190,41);
    
    CGRect lb2=CGRectMake(15, 10, 980, 400);
    CGRect lb3=CGRectMake(450, 400, 405, 40);
    CGRect lb4=CGRectMake(450, 500, 405, 40);
    
    
    qlb.frame=lb2;
    qlb.textAlignment=UITextAlignmentCenter;
    qlb.numberOfLines=12;
    
    flb.frame=lb3;
    slb.frame=lb4;
    
    qlb.text=@"I admit that I have broken God's laws and God would be justified in punishing me.";
    qlb.textColor=[UIColor blackColor];
    qlb.font= [UIFont fontWithName:@"Opificio" size:34.f];
    
    flb.text=@"I Agree";
    flb.font= [UIFont fontWithName:@"Opificio" size:34.f];
    
    flb.textColor=[UIColor blackColor];
    slb.textColor=[UIColor blackColor];
    slb.text=@"I Don’t Agree";
    slb.font= [UIFont fontWithName:@"Opificio" size:34.f];
    
    [self.view addSubview:_button1];
    [self.view addSubview:_button2];
    
    email.delegate=self;
    email.placeholder=@"Enter E-mail Address";
    email.frame=CGRectMake(350, 500, 300, 70);
    audiname.frame=CGRectMake(350, 400, 300, 70);
    presentername.frame=CGRectMake(150, 220, 180, 30);
    
    
    audiname.autocapitalizationType = UITextAutocapitalizationTypeSentences;
    audiname.delegate=self;
    audiname.placeholder=@"Enter Name";
    audiname.hidden=YES;
    
    presentername.delegate=self;
    presentername.placeholder=@"Enter Presenter Email";
    presentername.hidden=YES;
    
    
    next.frame = CGRectMake(800, 650, 200,60);
    next1.frame = CGRectMake(800, 650, 200,60);
    
    
    send=[UIButton buttonWithType:UIButtonTypeCustom];
    send.frame=CGRectMake(400, 600, 200,60);
    
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateNormal];
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateHighlighted];
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateSelected];
    
    [send addTarget:self action:@selector(sendAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [send setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:send];
    [self.view bringSubviewToFront:send];
    
    send1=[UIButton buttonWithType:UIButtonTypeCustom];
    send1.frame=CGRectMake(400, 600, 200,60);
    
    [send1 setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateNormal];
    [send1 setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateHighlighted];
    [send1 setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateSelected];
    
    [send1 addTarget:self action:@selector(sendAction1:) forControlEvents:UIControlEventTouchUpInside];
    
    [send1 setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:send1];
    [self.view bringSubviewToFront:send1];
    email.hidden=YES;
    audiname.hidden=YES;
    send.hidden=YES;
    send1.hidden=YES;
    
    CGRect lb1=CGRectMake(400, 20,300, 50);
    quizlb=[[UILabel alloc]init];
    quizlb.frame=lb1;
    quizlb.font= [UIFont fontWithName:@"Opificio" size:42.f];
    quizlb.text=@"The Bible";
    quizlb.textColor=[UIColor blackColor];
    quizlb.backgroundColor=[UIColor clearColor];
    [self.view addSubview:quizlb];
    
    quizlb.hidden=YES;
    next1.hidden=YES;
    audiname.tag=1;
    email.tag=2;
    presentername.tag=3;

}
-(void)loading
{
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.labelText = @"Loading Page..";
    
    [self.view addSubview:HUD];
    email.text=nil;
    audiname.text=nil;
    [self.email resignFirstResponder];
    [self.audiname resignFirstResponder];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self 
                                           selector:@selector(dismissHUD:) userInfo:nil 
                                            repeats:NO];
    
}
- (void)dismissHUD:(id)arg {
    
    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    HUD = nil;
    [timer invalidate];
    UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Mail Sent Successfully. " message:@"Have a great day!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"222" forKey:@"catch"];
    
    
    [alert1 show];
    [alert1 release];
    
    welldone *ta=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:ta animated:NO];
    [ta release]; 
    
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


-(IBAction)gobackview:(id)sender
{
    
    StartScreen16 *backview=[[StartScreen16 alloc]initWithNibName:@"StartScreen16" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
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
-(IBAction)sendAction1:(id)sender
{
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    countnew=[valu3 integerForKey:@"countemail"]; 
    
    NSLog(@"count remain %d",countnew);
    
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
        [valu setInteger:1 forKey:@"offline"];
        
        NSInteger str=[valu integerForKey:@"offline"];
        NSLog(@"OFF Line Mode responce-4 Don't : %d",str);
        
        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
        [valu3 setInteger:4 forKey:@"id4"];
        
        NSLog(@"No internet connection!");   
        if(countnew>=4)
        {
            NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
            [valu3 setInteger:countnew forKey:@"countemail"]; 
            
            alert11=[[UIAlertView alloc] initWithTitle:@"Sorry." message:@"You have already entered 4 email addresses so this cannot be sent. Please make a note of this email address and enter it again here when next online." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
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
            
            if(countnew==0)
            {
                NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                [valu1 setObject:audiname.text forKey:@"user170"];
                
                
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:email.text forKey:@"email170"];
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:countnew forKey:@"countemail17"];
                NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                [va setInteger:countnew forKey:@"countemail"]; 
                
                alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of additional email addresses. Please note that you need to reload this App once online for this email to send." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                alert11.tag=1;
                alert11.delegate=self;
                
                [alert11 show];
                [alert11 release];
                
            }
            if(countnew==1)
            {
                
                NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                [valu1 setObject:audiname.text forKey:@"user181"];
                
                
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:email.text forKey:@"email181"];
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:countnew forKey:@"countemail18"];
                NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                [va setInteger:countnew forKey:@"countemail"]; 
                alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of additional email addresses. Please note that you need to reload this App once online for this email to send." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                alert11.tag=1;
                alert11.delegate=self;
                
                [alert11 show];
                [alert11 release];
                
            }
            if(countnew==2)
            {
                NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                [valu1 setObject:audiname.text forKey:@"user192"];
                
                
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:email.text forKey:@"email192"];
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:countnew forKey:@"countemail19"];
                NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                [va setInteger:countnew forKey:@"countemail"]; 
                
                alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of additional email addresses. Please note that you need to reload this App once online for this email to send." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                alert11.tag=1;
                alert11.delegate=self;
                
                [alert11 show];
                [alert11 release];
            }
            if(countnew==3)
            {
                
                NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                [valu1 setObject:audiname.text forKey:@"user203"];
                
                
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:email.text forKey:@"email203"];
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:countnew forKey:@"countemail20"];
                NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                [va setInteger:countnew forKey:@"countemail"]; 
                alert11=[[UIAlertView alloc] initWithTitle:@"Please note:" message:@"You cannot store more than four responses before going online. If needed make a note of additional email addresses. Please note that you need to reload this App once online for this email to send." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
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
        [self.email resignFirstResponder];
        [self.audiname resignFirstResponder];
    } 
    else
    {
        NSString *k=audiname.text;
        
        NSString *space=[k stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(email.text.length!=0 && space.length!=0)
        {
            BOOL isValidMail = [self validateEmail:email.text];
            
            
            if (isValidMail)
            {
                [self inwitdownloadhstring1];
                
            }
            else
            {
                UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please provide valid email address" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                
                
                [alert1 show];
                [alert1 release];
                return;
            } 
            
        }
        else
        {
            UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please enter required fields." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert1 show];
            [alert1 release];
            
        }
    }
}
-(void)inwitdownloadhstring1
{
    
    NSURL *url = [NSURL URLWithString:ServerURL];
    ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
    
	[request1 setPostValue:@"Sendmail" forKey:@"Command"];
    
    [request1 setPostValue:email.text forKey:@"email"];
    [request1 setPostValue:@"4" forKey:@"sub"];
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
            UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please try again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert1 show];
            [alert1 release];
        }
        
    }
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

-(void)nextqus
{
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.6f];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:NO]; //the built in UIViewAnimationTransition values don't provide enough flexibility
    [UIView commitAnimations];
}
-(IBAction)radiobuttoncheck1:(id)sender
{
    if(check1==NO)
    {
        [_button1 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check1=YES;
        check2=NO;
        
        clickbutton1=1;
        
    }else
    {
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check1=NO;
        check2=YES;
        
    }
}
-(IBAction)radiobuttoncheck2:(id)sender
{
    if(check2==NO)
    {
        [_button2 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        
        check2=YES;
        check1=NO;
        
        clickbutton2=2;
        
    }else
    {
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check2=NO;
        check1=YES;
    }
}
-(void)hideradio
{
    
    check1=NO;
    check2=NO;
    
    
    clickbutton1=0;
    clickbutton2=0;
    
    [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    
    
}
-(IBAction)nextview:(id)sender

{ if(clickbutton1==1)
{
    NSLog(@"My Count %d",count);
    count=count+1;
    NSLog(@"My Count1 %d",count);
    
    switch (count) {
        case 1:
            [self question2];
            break;
        case 2:[self question3];
            break;
        case 3:
            [self question4];
            break;
        case 4:[self question5];
            break;
        case 5:
            [self question6];
            break;
        case 6:[self question7];
            break;
        case 7:
            [self question8];
            break;
        case 8:[self question9];
            break;
        default:
            break;
    }
}else
{
    if(clickbutton2==2)
    {
        
        [self dontagree];
        
    }else
    {
        
        alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please choose any one option" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
    }
    
}
    
}
-(void)dontagree
{
    
    quizlb.hidden=YES;
    qlb.text=@"To surrender to Jesus you must agree with this. I would like to send you a one off email that has a link to a free e-book that explains this some more. This will give you time to think about this decision and when you are ready it explains how you can surrender your life to Jesus.";
 
       next.hidden=YES;
    flb.hidden=YES;
    slb.hidden=YES;
    _button1.hidden=YES;
    _button2.hidden=YES;
    email.hidden=NO;
    send1.hidden=NO;
    audiname.hidden=NO;
    next1.hidden=NO;
}
-(void)question2
{
    if(count==1)   
    {
        
        qlb.text=@"I am genuinely sorry for breaking God's laws and I sincerely desire to give up the wrong ways of my past and live my life by God’s standards.";
        count=1;
        [self nextqus];
        [self hideradio];
    }else
    {
        alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please Select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=0;
        
    }
    
    
}
-(void)question3
{
    if(count==2)   
    {
        
        
        qlb.text=@"I understand that Jesus wants to be my friend and to fulfill my deepest needs. If I become a Christian, He will commit Himself to lovingly and gently changing me into the person He wants me to be. I understand that real change will only happen as I co-operate with Him. Change will sometimes be painful and at times I may fail. No matter how many times I fail, I'm going to keep living for Him.";
        
        count=2;
        [self nextqus];
        [self hideradio];
    }else
    {
        count=1;
        
    }
}
-(void)question4
{
    if(count==3)   
    {
        
        qlb.text=@"I acknowledge that Jesus as God, is loving and absolutely awesome. He is the Supreme Ruler and Creator of the world. Because this is true, I understand that He owns me and has the right, in love, to ask me to do anything that is His will for me. I want to have a personal relationship with Him and follow Him with all my heart.";
        
        count=3;
        [self nextqus];
        [self hideradio];
    }
    else
    {
        alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please Select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=2;
        
    }
    
}
-(void)question5
{
    if(count==4)   
    {
        
        qlb.text=@"What does it mean to \"follow Him with all your heart?\"	It includes a new attitude towards the Bible, the Church and the World. Remember that these are heart attitudes, not a list of things you have to do in order to get to Heaven!";
        count=4;
        [self hideradio];
        flb.hidden=YES;
        slb.hidden=YES;
        _button1.hidden=YES;
        _button2.hidden=YES;
        clickbutton1=1;
        
    }
    else
    {
        alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please Select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=3;
        
        
    }
}
-(void)question6
{
    if(count==5)   
    {
        quizlb.hidden=NO;
        qlb.text=@"I may not know what this book teaches yet, but I understand it is God's message to me. It shows me how He wants me to live. I want God to help me obey what it says with all my heart.";
        count=5;
        [self nextqus]; 
        [self hideradio];
        flb.hidden=NO;
        slb.hidden=NO;
        _button1.hidden=NO;
        _button2.hidden=NO;
    }
    else
    {
        alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please Select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=4;
        
        
    }
}
-(void)question7
{
    if(count==6)   
    {
        quizlb.text=@"The Church";
        qlb.text=@"Being a Christian isn’t easy and I need the support of others. I also need to learn from other Christians how to follow Jesus better. I will commit to being involved in a good church.";
        count=6;
        [self nextqus]; 
        [self hideradio];
        
    }
    else
    {
        alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please Select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=5;
        
        
    }
}
-(void)question8
{
    if(count==7)   
    {
        quizlb.text=@"The World";
        qlb.text=@"All people in the world have needs. I want to love people so that these needs, especially the spiritual, can be met.";
        count=7;
        [self nextqus]; 
        [self hideradio];
        
    }
    else
    {
        alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please Select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=6;
        
        
    }
}
-(void)question9
{
    if(count==8)   
    {       StartScreen18 *tab1=[[StartScreen18 alloc]initWithNibName:@"StartScreen18" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
        [tab1 release];
        
    }
    else
    {
        alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please Select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=7;
        
        
    }
}
-(IBAction)nextview1:(id)sender
{
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"222" forKey:@"catch"];
    welldone *tab1=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];    
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex 
{ 
    if(alert11.tag==1)
    {
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"222" forKey:@"catch"];
        
        welldone *ta=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
        [self.navigationController pushViewController:ta animated:NO];
        [ta release];   
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
