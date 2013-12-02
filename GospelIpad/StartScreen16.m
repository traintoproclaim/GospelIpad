//
//  StartScreen16.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen16.h"
#import "StartScreen17.h"
#import "MailView_1.h"
#import "welldone.h"
#import "JSON.h"
#import "ASIFormDataRequest.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "QuizView.h"
#import "StartScreen15.h"
#import "extra9.h"
#import "GospelIpadViewController.h"
#import "GospelIpadAppDelegate.h"

@implementation StartScreen16
@synthesize _button1,_button2,_button3,_button4,lable1;
@synthesize lable2,lable3,lable4,lable5,lable6,back2;
@synthesize send1,send2,send3,send4,email,back,quizlb,next1,audiname;
int clickbutton1;
int clickbutton2;
int clickbutton3;
int clickbutton4;

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
    
    lable1=[[UILabel alloc]init];
    lable1.frame=CGRectMake(0,100, 1024, 100);
    lable1.text=@"Which statement best describes your response to this presentation?";
    lable1.font= [UIFont fontWithName:@"Opificio" size:40.f];
    
    lable1.numberOfLines=2;
    lable1.textColor=[UIColor blackColor];
    lable1.textAlignment=UITextAlignmentCenter;
    lable1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable1];
    
    
    lable6=[[UILabel alloc]init];
    lable6.frame=CGRectMake(10, 70, 1000, 400);
    lable6.font= [UIFont fontWithName:@"Opificio" size:40.f];
    lable6.numberOfLines=5;
    lable6.textColor=[UIColor blackColor];
    lable6.textAlignment=UITextAlignmentCenter;
    lable6.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable6];
    
    
    
    check1=NO;
    check2=NO;
    check3=NO;
    check4=NO;
    
    
    _button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button1.adjustsImageWhenHighlighted = NO; 
    [_button1 addTarget:self action:@selector(radiobuttoncheck1:) forControlEvents:UIControlEventTouchUpInside];
    _button1.backgroundColor=[UIColor clearColor];
    
    
    
    _button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button2.adjustsImageWhenHighlighted = NO; 
    [_button2 addTarget:self action:@selector(radiobuttoncheck2:) forControlEvents:UIControlEventTouchUpInside];
    
    _button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button3.adjustsImageWhenHighlighted = NO; 
    [_button3 addTarget:self action:@selector(radiobuttoncheck3:) forControlEvents:UIControlEventTouchUpInside];
    
    _button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button4.adjustsImageWhenHighlighted = NO; 
    [_button4 addTarget:self action:@selector(radiobuttoncheck4:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    
    [_button1 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateHighlighted];
    [_button1 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateSelected]; 
    [_button2 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateHighlighted];
    [_button2 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateSelected]; 
    
    [_button3 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateHighlighted];
    [_button3 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateSelected]; 
    [_button4 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateHighlighted];
    [_button4 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateSelected]; 
    
    
    
    
    _button1.frame = CGRectMake(130,250,300,41);
    _button2.frame = CGRectMake(130,350,300,41);
    _button3.frame = CGRectMake(130,450,300,41);
    _button4.frame = CGRectMake(130,550,300,41);
    
    lable2=[[UILabel alloc]init];
    lable2.frame=CGRectMake(340, 250, 450, 40);
    lable2.text=@"I don’t believe it";
    lable2.font= [UIFont fontWithName:@"Opificio" size:38.f];
    
    lable2.textColor=[UIColor blackColor];
    lable2.textAlignment=UITextAlignmentLeft;
    lable2.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable2];
    
    lable3=[[UILabel alloc]init];
    lable3.frame=CGRectMake(340, 350, 500, 40);
    lable3.text=@"I might give it some thought";
    lable3.font= [UIFont fontWithName:@"Opificio" size:38.f];
    
    lable3.textColor=[UIColor blackColor];
    lable3.textAlignment=UITextAlignmentLeft;
    lable3.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable3];
    
    lable4=[[UILabel alloc]init];
    lable4.frame=CGRectMake(340, 450, 550, 40);
    lable4.text=@"I’d like to explore it further";
    lable4.font= [UIFont fontWithName:@"Opificio" size:38.f];
    
    lable4.textColor=[UIColor blackColor];
    lable4.textAlignment=UITextAlignmentLeft;
    lable4.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable4];
    
    lable5=[[UILabel alloc]init];
    lable5.frame=CGRectMake(340, 550, 700, 40);
    lable5.text=@"I want to surrender to Jesus right now";
    lable5.font= [UIFont fontWithName:@"Opificio" size:38.f];
    
    lable5.textColor=[UIColor blackColor];
    lable5.textAlignment=UITextAlignmentLeft;
    lable5.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable5];
    
    [self.view addSubview:_button1];
    [self.view addSubview:_button2];
    [self.view addSubview:_button3];
    [self.view addSubview:_button4];
    
    lable6.font= [UIFont fontWithName:@"Opificio" size:40.f];
    
    
    send1= [UIButton buttonWithType:UIButtonTypeCustom];
    send1.adjustsImageWhenHighlighted = NO; 
    [send1 addTarget:self action:@selector(send1Action:) forControlEvents:UIControlEventTouchUpInside];
    send1.backgroundColor=[UIColor clearColor];
    send1.frame = CGRectMake(800, 650, 200,60);
    [send1 setImage:[UIImage imageNamed:@"endbtn@1x.png"] forState:UIControlStateNormal];
    [self.view addSubview:send1];
    
    send2= [UIButton buttonWithType:UIButtonTypeCustom];
    send2.adjustsImageWhenHighlighted = NO; 
    [send2 addTarget:self action:@selector(send2Action:) forControlEvents:UIControlEventTouchUpInside];
    send2.backgroundColor=[UIColor clearColor];
    send2.frame = CGRectMake(400, 600, 200,60);
    [send2 setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateNormal];
    [self.view addSubview:send2];
    
    send3= [UIButton buttonWithType:UIButtonTypeCustom];
    send3.adjustsImageWhenHighlighted = NO; 
    [send3 addTarget:self action:@selector(send3Action:) forControlEvents:UIControlEventTouchUpInside];
    send3.backgroundColor=[UIColor clearColor];
    send3.frame = CGRectMake(400, 600, 200,60);
    [send3 setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateNormal];
    [self.view addSubview:send3];
    
    send4= [UIButton buttonWithType:UIButtonTypeCustom];
    send4.adjustsImageWhenHighlighted = NO; 
    [send4 addTarget:self action:@selector(send4Action:) forControlEvents:UIControlEventTouchUpInside];
    send4.backgroundColor=[UIColor clearColor];
    send4.frame = CGRectMake(800, 600, 200,60);
    [send4 setImage:[UIImage imageNamed:@"endbtn@1x.png"] forState:UIControlStateNormal];
    [self.view addSubview:send4];
    
    send1.hidden=YES;
    send2.hidden=YES;
    send3.hidden=YES;
    send4.hidden=YES;
    
    email.delegate=self;
    email.placeholder=@"Enter E-mail Address";
    email.frame=CGRectMake(350, 500, 300, 70);
    audiname.frame=CGRectMake(350, 400, 300, 70);
    audiname.autocapitalizationType = UITextAutocapitalizationTypeSentences;
    
    audiname.delegate=self;
    audiname.placeholder=@"Enter Name";
    audiname.hidden=YES;
    
    
    email.hidden=YES;
    CGRect lb1=CGRectMake(400, 40,200, 50);
    quizlb=[[UILabel alloc]init];
    quizlb.frame=lb1;
    quizlb.font= [UIFont fontWithName:@"Opificio" size:42.f];
    quizlb.text=@"Thank You";
    quizlb.textColor=[UIColor blackColor];
    quizlb.backgroundColor=[UIColor clearColor];
    [self.view addSubview:quizlb];
    
    quizlb.hidden=YES;
    
    next1.frame = CGRectMake(800,650, 200,60);
    next1.hidden=YES;
    

}
-(void)loading
{
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.labelText = @"Loading Page..";
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
    welldone *ta=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:ta animated:NO];
    [ta release]; 
    [timer invalidate];
    
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


-(IBAction)radiobuttoncheck1:(id)sender
{
    if(check1==NO)
    {
        NSUserDefaults *bc1=[NSUserDefaults standardUserDefaults];
        NSString *back1=[bc1 objectForKey:@"back"];
        if([back1 isEqualToString:@"2"])
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"2" forKey:@"back"];
            NSUserDefaults *bc2=[NSUserDefaults standardUserDefaults];
            [bc2 setObject:@"1" forKey:@"Homeback"];
            
        }else
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"1" forKey:@"back"];
        }
        
        
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"1" forKey:@"catch"];
        
        
        [_button1 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check1=YES;
        check2=NO;
        check3=NO;
        check4=NO;
        
        
        clickbutton1=1;
        clickButton=1;
        next1.frame=CGRectMake(800, 600, 200,60);
        [next1 setImage:[UIImage imageNamed:@"endbtn@1x.png"] forState:UIControlStateNormal];
        next1.hidden=NO;
        [self hideradio];
        quizlb.hidden=NO;
        
        lable6.text=@"Thanks for your time today, I do hope you found it interesting. I would encourage you to give it some more thought, eternity is a long time and you really want to make sure you get this right.";
        
        
    }else
    {
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check1=NO;
        check2=YES;
        check3=YES;
        check4=YES;
    }
}
-(IBAction)radiobuttoncheck2:(id)sender
{
    if(check2==NO)
    {
        NSUserDefaults *bc1=[NSUserDefaults standardUserDefaults];
        NSString *back1=[bc1 objectForKey:@"back"];
        if([back1 isEqualToString:@"2"])
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"2" forKey:@"back"];
            NSUserDefaults *bc2=[NSUserDefaults standardUserDefaults];
            [bc2 setObject:@"1" forKey:@"Homeback"];
            
        }else
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"1" forKey:@"back"];
        }
        
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"1" forKey:@"catch"];
        
        
        [_button2 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check2=YES;
        check1=NO;
        check3=NO;
        check4=NO;
        clickbutton2=2;
        clickButton=2;
        next1.hidden=NO;
        [self hideradio];
        
        lable6.text=@"Thanks for that. Would you like to receive a one off email with links to a website that has answers to questions like ‘How do you know if the Bible is true?’ and ‘What about the other religions?'";
        quizlb.hidden=NO;
        
        send2.hidden=NO;
        email.hidden=NO;
        audiname.hidden=NO;
        
    }else
    {
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check2=NO;
        check1=YES;
        check3=YES;
        check4=YES;
        
    }
}
-(IBAction)radiobuttoncheck3:(id)sender
{
    if(check3==NO)
    { NSUserDefaults *bc1=[NSUserDefaults standardUserDefaults];
        NSString *back1=[bc1 objectForKey:@"back"];
        if([back1 isEqualToString:@"2"])
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"2" forKey:@"back"];
            NSUserDefaults *bc2=[NSUserDefaults standardUserDefaults];
            [bc2 setObject:@"1" forKey:@"Homeback"];
            
        }else
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"1" forKey:@"back"];
        }
        
        
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"1" forKey:@"catch"];
        
        
        [_button3 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check3=YES;
        
        check2=NO;
        check1=NO;
        check4=NO;
        clickbutton3=3;
        clickButton=3;
        next1.hidden=NO;
        [self hideradio];
        
        lable6.text=@"That’s great! Do you have someone you know that can help you with this? Can I help? Would you like to receive a one off email with a link to a free e-book that explains a bit more about this?";
        quizlb.hidden=NO;
        
        send3.hidden=NO;
        email.hidden=NO;
        audiname.hidden=NO;
        
    }else
    {
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        check3=NO;
        check2=YES;
        check1=YES;
        check4=YES;
        
    }
}
-(IBAction)radiobuttoncheck4:(id)sender
{
    if(check4==NO)
    {
        NSUserDefaults *bc1=[NSUserDefaults standardUserDefaults];
        NSString *back1=[bc1 objectForKey:@"back"];
        if([back1 isEqualToString:@"2"])
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"2" forKey:@"back"];
            NSUserDefaults *bc2=[NSUserDefaults standardUserDefaults];
            [bc2 setObject:@"1" forKey:@"Homeback"];
            
        }else
        {
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"1" forKey:@"back"];
        }
        
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"1" forKey:@"catch"];
        
        
        [_button4 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check4=YES;
        check2=NO;
        check1=NO;
        check3=NO;
        
        clickbutton4=4;
        clickButton=4;
        
        [self hideradio];
        lable6.frame=CGRectMake(10, 70, 990, 400);

        lable6.text=@"Excellent! I am happy to help you with this! Turning and Surrendering your life to Jesus is a massive commitment that involves a heart attitude change.	Let’s go through 7 heart attitudes to check that you are ready :";
        quizlb.hidden=NO;
        send4.hidden=NO;
        [send4 setImage:[UIImage imageNamed:@"next@1x.png"] forState:UIControlStateNormal];
        
    }else
    {
        
        [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        check4=NO;
        check2=YES;
        check1=YES;
        check4=YES;
        check3=YES;
    }
}
-(void)hideradio
{
    check1=NO;
    check2=NO;
    check3=NO;
    check4=NO;
    clickbutton1=0;
    clickbutton2=0;
    clickbutton3=0;
    clickbutton4=0;
    _button1.hidden=YES;
    _button2.hidden=YES;
    _button3.hidden=YES;
    _button4.hidden=YES;
    
    lable1.hidden=YES;
    lable2.hidden=YES;
    lable3.hidden=YES;
    lable4.hidden=YES;
    lable5.hidden=YES;
    
    
}
-(IBAction)send1Action:(id)sender
{
    [self hideradio];
    MailView_1 *tab=[[MailView_1 alloc]initWithNibName:@"MailView_1" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab release]; 
}
-(BOOL)validateEmail:(NSString *) candidate {
	
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"; 
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex]; 
    
    return [emailTest evaluateWithObject:candidate];
}

-(IBAction)send2Action:(id)sender
{
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    count=[valu3 integerForKey:@"countemail"]; 
    
    NSLog(@"Remain count %d",count);
    GospelIpadAppDelegate *appDelegate = (GospelIpadAppDelegate*)[[UIApplication sharedApplication] delegate];
    [self hideradio];
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {  
        NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
        [valu setInteger:1 forKey:@"offline"];
        
        NSInteger str=[valu integerForKey:@"offline"];
        NSLog(@"OFF Line Mode responce-2 : %d",str);
        
        
        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
        [valu3 setInteger:1 forKey:@"id1"];
        
        NSInteger str4=[valu3 integerForKey:@"id1"];
        NSLog(@"OFF Line ID responce-2 : %d",str4);
        
        NSLog(@"No internet connection!"); 
        
        if(count>=4)
        {
            
            NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
            [va setInteger:count forKey:@"countemail"]; 
            
            alert11=[[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have already entered 4 email addresses so this cannot be sent. Please make a note of this email address and enter it again here when next online." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];        alert11.tag=1;
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
                [valu1 setObject:appDelegate.username1 forKey:@"user50"];
                
                appDelegate.email1=email.text; 
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:appDelegate.email1 forKey:@"email51"];
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:count forKey:@"countemail5"];
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
                [valu1 setObject:appDelegate.username2 forKey:@"user61"];
                
                appDelegate.email2=email.text; 
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:appDelegate.email2 forKey:@"email62"];
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:count forKey:@"countemail6"];
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
                [valu1 setObject:appDelegate.username3 forKey:@"user72"];
                
                appDelegate.email3=email.text; 
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:appDelegate.email3 forKey:@"email73"];
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:count forKey:@"countemail7"];
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
                [valu1 setObject:appDelegate.username4 forKey:@"user83"];
                
                appDelegate.email4=email.text; 
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:appDelegate.email4 forKey:@"email83"];
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:count forKey:@"countemail8"];
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
    } else
    {
        
        NSString *k=audiname.text;
        
        NSString *space=[k stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(email.text.length!=0 && space.length!=0)
        {
            
            BOOL isValidMail = [self validateEmail:email.text];
            if (isValidMail)
            {
                [self inwitdownloadhstring];
                
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
-(void)inwitdownloadhstring
{
    
    
    NSURL *url = [NSURL URLWithString:ServerURL];
    ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
    
	[request1 setPostValue:@"Sendmail" forKey:@"Command"];
    
    [request1 setPostValue:email.text forKey:@"email"];
    [request1 setPostValue:@"1" forKey:@"sub"];
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

-(IBAction)send3Action:(id)sender
{
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    count=[valu3 integerForKey:@"countemail"]; 
    NSLog(@"Remain count %d",count);
    
    [self hideradio];
    GospelIpadAppDelegate *appDelegate = (GospelIpadAppDelegate*)[[UIApplication sharedApplication] delegate];
    
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        
        NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
        [valu setInteger:1 forKey:@"offline"];
        
        NSInteger str=[valu integerForKey:@"offline"];
        NSLog(@"OFF Line Mode responce-3 : %d",str);
        
        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
        [valu3 setInteger:2 forKey:@"id2"];
        
        NSInteger str4=[valu3 integerForKey:@"id2"];
        NSLog(@"OFF Line ID responce-3 : %d",str4);
        
        
        NSLog(@"No internet connection!");   
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
                [valu1 setObject:appDelegate.username1 forKey:@"user90"];
                
                appDelegate.email1=email.text; 
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:appDelegate.email1 forKey:@"email90"];
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:count forKey:@"countemail9"];
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
                [valu1 setObject:appDelegate.username2 forKey:@"user101"];
                
                appDelegate.email2=email.text; 
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:appDelegate.email2 forKey:@"email101"];
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:count forKey:@"countemail10"];
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
                [valu1 setObject:appDelegate.username3 forKey:@"user112"];
                
                appDelegate.email3=email.text; 
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:appDelegate.email3 forKey:@"email112"];
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:count forKey:@"countemail11"];
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
                [valu1 setObject:appDelegate.username4 forKey:@"user123"];
                
                appDelegate.email4=email.text; 
                NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                [valu2 setObject:appDelegate.email4 forKey:@"email123"];
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:count forKey:@"countemail12"];
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
        
    } else
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
-(void)inwitdownloadhstring1
{
    
    
    NSURL *url = [NSURL URLWithString:ServerURL];
    ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
    
	[request1 setPostValue:@"Sendmail" forKey:@"Command"];
    
    [request1 setPostValue:email.text forKey:@"email"];
    [request1 setPostValue:@"2" forKey:@"sub"];
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

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex 
{ 
    if(alert11.tag==1)
    {
        NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
        [perf setObject:@"1" forKey:@"catch"];
        welldone *ta=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
        [self.navigationController pushViewController:ta animated:NO];
        [ta release];   
    }
}

-(IBAction)send4Action:(id)sender
{
    NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
    NSString *back1=[bc objectForKey:@"back"];
    if([back1 isEqualToString:@"2"])
    {
        NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
        [bc setObject:@"0" forKey:@"Homeback"];
    }else
    {
        NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
        [bc setObject:@"0" forKey:@"back"]; 
    }
    [self hideradio];
    tab1=[[StartScreen17 alloc]initWithNibName:@"StartScreen17" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
}
-(IBAction)nextview:(id)sender
{
    NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
    NSString *back1=[bc objectForKey:@"back"];
    if([back1 isEqualToString:@"2"])
    {
        NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
        [bc setObject:@"0" forKey:@"Homeback"];
    }else
    {
        NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
        [bc setObject:@"0" forKey:@"back"]; 
    }
    
    welldone *ta=[[welldone alloc]initWithNibName:@"welldone" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:ta animated:NO];
    [ta release];    
    
}
-(IBAction)gobackview:(id)sender
{
    NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
    NSString *back1=[bc objectForKey:@"back"];
    
    NSUserDefaults *bc1=[NSUserDefaults standardUserDefaults];
    back2=[bc1 objectForKey:@"Homeback"];
    
    NSLog(@"back1 %@",back1);
    NSLog(@"back2 %@",back2);
    
    if([back1 isEqualToString:@"1"])
    {
        StartScreen16 *backview=[[StartScreen16 alloc]initWithNibName:@"StartScreen16" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
        NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
        [bc setObject:@"0" forKey:@"back"];
        
    }
    if([back1 isEqualToString:@"0"])
    {
        
        Extra9 *backview=[[Extra9 alloc]initWithNibName:@"Extra9" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    }
    if([back1 isEqualToString:@"2"])
    {
        
        if([back2 isEqualToString:@"0"])
        {
            
            [self longTap];
        }
        else
        {
            StartScreen16 *backview=[[StartScreen16 alloc]initWithNibName:@"StartScreen16" bundle:nil];
            self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
            
            [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"0" forKey:@"Homeback"];
            
            
        }
    }
    
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
}    
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [self.email resignFirstResponder];
    [self.audiname resignFirstResponder];
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
