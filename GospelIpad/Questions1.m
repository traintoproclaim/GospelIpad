//
//  Questions1.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Questions1.h"
#import "AudienceView.h"
#import "GospelIpadViewController.h"
#import "score.h"

@implementation Questions1
@synthesize next;
@synthesize qlb,quizlb,flb,slb,tlb,folb,filb,name,inst,groid,_button1,quote;
@synthesize _button2,_button3,_button4,_button5,text;
int clickbutton1;
int clickbutton2;
int clickbutton3;
int clickbutton4;
int clickbutton5;
int clickButton;
int add;

static const NSUInteger kRadioButtonWidth=22;
static const NSUInteger kRadioButtonHeight=22;

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
    check3=NO;
    check4=NO;
    check5=NO;
    
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
    
    _button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button5.adjustsImageWhenHighlighted = NO;
    [_button5 addTarget:self action:@selector(radiobuttoncheck5:) forControlEvents:UIControlEventTouchUpInside];
    [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button5 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    
    
    
    name.delegate=self;
    _button1.frame = CGRectMake(30,200,190,41);
    _button2.frame = CGRectMake(30,300,190,41);
    _button3.frame = CGRectMake(30,400,190,41);
    _button4.frame = CGRectMake(450,200,190,41);
    _button5.frame = CGRectMake(450,300,190,41);
    
    
    
    CGRect lb1=CGRectMake(0, 10, 1024, 50);
    CGRect lb2=CGRectMake(40, 50, 1024, 200);
    CGRect lb3=CGRectMake(160, 200, 200, 50);
    CGRect lb4=CGRectMake(160, 300, 200, 50);
    CGRect lb5=CGRectMake(160, 400, 290, 50);
    CGRect lb6=CGRectMake(580, 200, 200, 50);
    CGRect lb7=CGRectMake(580, 300, 200, 50);
    CGRect lb8=CGRectMake(800, 500, 200,60);
    CGRect lb9=CGRectMake(0, 680, 1024, 90);
    
    quizlb.frame=lb1;
    quizlb.font= [UIFont fontWithName:@"Opificio" size:54.f];
    quizlb.textAlignment=UITextAlignmentCenter;
    qlb.frame=lb2;
    qlb.font= [UIFont fontWithName:@"Opificio" size:40.f];
    qlb.textAlignment=UITextAlignmentLeft;
    flb.frame=lb3;
    flb.font= [UIFont fontWithName:@"Opificio" size:34.f];
    slb.frame=lb4;
    slb.font= [UIFont fontWithName:@"Opificio" size:34.f];
    tlb.frame=lb5;
    tlb.font= [UIFont fontWithName:@"Opificio" size:35.f];
    folb.frame=lb6;
    folb.font= [UIFont fontWithName:@"Opificio" size:34.f];
    filb.frame=lb7;
    filb.font= [UIFont fontWithName:@"Opificio" size:34.f];
    next.frame=lb8;
    
    
    quote.frame=lb9;
    
    quote.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    [quote addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    quote.titleLabel.numberOfLines=2;
    quote.backgroundColor=[UIColor blackColor];
    quote.titleLabel.textAlignment=UITextAlignmentCenter;
    quote.titleLabel.lineBreakMode=YES;
    
    
    [self.view addSubview:quote];
    
    [self.view addSubview:_button1];
    [self.view addSubview:_button2];
    [self.view addSubview:_button3];
    [self.view addSubview:_button4];
    [self.view addSubview:_button5];
    
    text.frame=CGRectMake(900,650 , 100, 100);
    text.backgroundColor=[UIColor clearColor];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    NSString *str=[perf objectForKey:@"lableoff"]; 
    if([str isEqualToString:@"1"])
    {
        quote.hidden=YES;
        text.hidden=NO;
    }else
    {
        quote.hidden=NO;
        text.hidden=YES;
    }

}



-(void)labelTap
{
    quote.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
    
}
-(void)showlable
{
    quote.hidden=NO;
    text.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];
    
}

-(void)nextqus
{
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.6f];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:NO]; //the built in UIViewAnimationTransition values don't provide enough flexibility
    [UIView commitAnimations];
}
-(IBAction)nextview:(id)sender
{ 
    NSLog(@"My Count %d",count);
    count=count+1;
    NSLog(@"My Count1 %d",count);
    if(count==1)
    {
        [self question2];
        
        
    }
    if(count==2)
    {
        [self question3];
        
        
    }
    if(count==3)
    {
        [self audience];
        
        
    }
    if(count==4)
    {
        [self question4];
        
        
    }
    if(count==5)
    {
        [self question5];
        
        
        
    }
    if(count==6)
    {
        [self question6];
    }
    if(count==7)
    {
        [self question7];
    }
    if(count==8)
    {
        [self question8];
        
    }
    if(count==9)
    {
        [self question9];
    }
    if(count==10)
    {
        [self question10];
        
        
        
    }if(count==11)
    {
        [self score];
    }
    
    
    
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
        [_button1 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button5 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        check1=YES;
        check2=NO;
        check3=NO;
        check4=NO;
        check5=NO;
        
        clickbutton1=1;
        clickButton=1;
        
    }else
    {
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check1=NO;
        check2=YES;
        check3=YES;
        check4=YES;
        check5=YES;
    }
}
-(IBAction)radiobuttoncheck2:(id)sender
{
    if(check2==NO)
    {
        [_button2 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button5 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check2=YES;
        check1=NO;
        check3=NO;
        check4=NO;
        check5=NO;
        clickbutton2=2;
        clickButton=2;
    }else
    {
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check2=NO;
        check1=YES;
        check3=YES;
        check4=YES;
        check5=YES;
    }
}
-(IBAction)radiobuttoncheck3:(id)sender
{
    if(check3==NO)
    {
        [_button3 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button5 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check3=YES;
        
        check2=NO;
        check1=NO;
        check4=NO;
        check5=NO;
        clickbutton3=3;
        clickButton=3;
    }else
    {
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        check3=NO;
        check2=YES;
        check1=YES;
        check4=YES;
        check5=YES;
    }
}
-(IBAction)radiobuttoncheck4:(id)sender
{
    if(check4==NO)
    {
        [_button4 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button5 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check4=YES;
        check2=NO;
        check1=NO;
        check3=NO;
        check5=NO;
        clickbutton4=4;
        clickButton=4;
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
-(IBAction)radiobuttoncheck5:(id)sender
{
    if(check5==NO)
    {
        [_button5 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check5=YES;
        check2=NO;
        check1=NO;
        check4=NO;
        check3=NO;
        clickbutton5=5;
        clickButton=5;
    }else
    {
        [_button5 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        check5=NO;
        check2=YES;
        check1=YES;
        check4=YES;
        check3=YES;
    }
}
-(void)hideradio
{
    [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button5 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    
    check1=NO;
    check2=NO;
    check3=NO;
    check4=NO;
    check5=NO;
    clickbutton1=0;
    clickbutton2=0;
    clickbutton3=0;
    clickbutton4=0;
    clickbutton5=0;
    
}
-(void)question2
{
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&count==1)   
    {
        [self nextqus];
        [self hideradio];
        qlb.text=@"2. I pray";
        [quote setTitle:@" I pray. 5 is every day, 1 is never in your life. Not even when you        are in trouble!" forState:UIControlStateNormal];
        
        add=clickButton;
        NSLog(@"Add value %d",add);
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:add forKey:@"value"];
        NSLog(@"Add value %d",add);
        count=1;
        
    }else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=0;
        
    }
    
    
}
-(void)question3
{
    NSLog(@"click button %d",clickButton);
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&count==2)   
    {
        [self nextqus];
        [self hideradio];
        qlb.text=@"3. I help strangers in need";
       
        [quote setTitle:@"Well you are helping me today" forState:UIControlStateNormal];
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        value1=[prefs integerForKey:@"value"];
        value1=add+clickButton;
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:value1 forKey:@"value1"];
        NSLog(@"Add value %d",value1);
        
        
        NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
        [valu setInteger:0 forKey:@"skip"];
        count=2;
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=1;
    }
    
}
-(void)audience
{
    NSLog(@"click button %d",clickButton);
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&count==3)   
    {
        
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        value1=[prefs integerForKey:@"value1"];
        value1=value1+clickButton;
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:value1 forKey:@"value2"];
        NSLog(@"Add value %d",value1);
        
        
        
        AudienceView *tab1=[[AudienceView alloc]initWithNibName:@"AudienceView" bundle:[NSBundle mainBundle]];	
        
        [self.navigationController pushViewController:tab1 animated:NO];
        
        
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=2;
    }
    
}
-(void)question4
{
    NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
    newval=[pref2 integerForKey:@"val"];
    NSLog(@"My New Value %d",newval);
    NSLog(@"My New click %d",clickbutton1);
    NSLog(@"My New click %d",clickbutton2);
    NSLog(@"My New click %d",clickbutton3);
    NSLog(@"My New click %d",clickbutton4);
    NSLog(@"My New click %d",clickbutton5);
    
    
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&newval==1)   
    {
        [self nextqus];
        [self hideradio];
        
        qlb.text=@"4. I read the Bible";
       
        [quote setTitle:@"    5 is you browse it quite often, 1 is you have never held it in              your hand" forState:UIControlStateNormal];
        
        
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        value3=[prefs integerForKey:@"value2"];
        
        NSLog(@"Add value %d",value3);
        
        
        count=4;
    }else
    {
        count=3;
        
    }
}
-(void)question5
{
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&count==5)   
    {
        [self nextqus];
        [self hideradio];
        qlb.text=@"5. I forgive people when they hurt me";
      
        [quote setTitle:@"This is hard to do sometimes" forState:UIControlStateNormal];
        
        
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        value4=[prefs integerForKey:@"value2"];
        value4=value4+clickButton;
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:value4 forKey:@"value3"];
        NSLog(@"Add value %d",value4);
        count=5;
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=4;
        
    }
    
}
-(void)question6
{
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&count==6)   
    {
        [self nextqus]; 
        [self hideradio];
        qlb.text=@"6. I love & help family members";
        [quote setTitle:@"Love your family?" forState:UIControlStateNormal];
        
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        
        value5=[prefs integerForKey:@"value3"];
        value5=value5+clickButton;
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:value5 forKey:@"value4"];
        NSLog(@"Add value %d",value5);
        count=6;
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=5;
        
        
    }
}
-(void)question7
{
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&count==7)   
    {
        [self nextqus];  
        [self hideradio];  
        qlb.text=@"7. I am loyal with my friendships";
        [quote setTitle:@"Are you a good friend?" forState:UIControlStateNormal];
        
        
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        value6=[prefs integerForKey:@"value4"];
        value6=value6+clickButton;
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:value6 forKey:@"value5"];
        NSLog(@"Add value %d",value6);
        count=7;
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=6;
        
    }
    
    
}
-(void)question8
{
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&count==8)   
    {
        [self nextqus]; 
        [self hideradio];
        qlb.text=@"8. I put other people first when they need me";
        
        [quote setTitle:@"You are putting me first today!" forState:UIControlStateNormal];
        
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        value7=[prefs integerForKey:@"value5"];
        value7=value7+clickButton;
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:value7 forKey:@"value6"];
        NSLog(@"Add value %d",value7);
        count=8;
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=7;
        
    }
}
-(void)question9
{
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&count==9)   
    {
        [self nextqus];
        [self hideradio];
        qlb.text=@"9. I am totally honest in the things I say and do";
        [quote setTitle:@"This is revealing one :-)" forState:UIControlStateNormal];
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        value8=[prefs integerForKey:@"value6"];
        value8=value8+clickButton;
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:value8 forKey:@"value7"];
        NSLog(@"Add value %d",value8);
        count=9;
        
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=8;
    }
    
    
}
-(void)question10
{
    if((clickbutton1==1||clickbutton2==2||clickbutton3==3||clickbutton4==4||clickbutton5==5)&&count==10)   
    {
        [self nextqus]; 
        [self hideradio];
        qlb.text=@"10. I see the best in people";
        
        [quote setTitle:@"Do you see the best or the worst in people, or a bit of both?" forState:UIControlStateNormal];
        
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        value9=[prefs integerForKey:@"value7"];
        value9=value9+clickButton;
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:value9 forKey:@"value8"];
        NSLog(@"Add value %d",value9);
        count=10;
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=9;
        
    }
    
}
-(void)score
{
    if(count==11)
    {
        [self nextqus];
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        value10=[prefs integerForKey:@"value8"];
        value10=value10+clickButton;
        NSUserDefaults *value = [NSUserDefaults standardUserDefaults];
        [value setInteger:value10 forKey:@"value9"];
        NSLog(@"Add value %d",value10);
        
        
        
        score *tab1=[[score alloc]initWithNibName:@"score" bundle:[NSBundle mainBundle]];	
        
        [self.navigationController pushViewController:tab1 animated:NO];
        [tab1 release]; 
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select answer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release];
        count=9;
        
    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
-(void)viewWillAppear:(BOOL)animated
{
    
    NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
    newval=[pref2 integerForKey:@"val"];
    NSLog(@"My New Value %d",newval);
    if(newval==1)
    {
        [self question4];
    }
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);}

@end
