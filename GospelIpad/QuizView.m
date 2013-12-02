//
//  QuizView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "QuizView.h"
#import "InstructionView.h"
#import "ExtraQuizView.h"
#import "ExtraSkipView.h"
#import "QuizIntroView.h"
#import "StartPresentationView.h"
#import "AudienceView.h"



@implementation QuizView
@synthesize name,next,nlable,quiz,skip,back,_button1,_button2;
int clickbutton;

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
    NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
    [name1 setObject:@"1" forKey:@"changeview"];
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]]; 
    check1=NO;
    check2=NO;
    
    _button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button1.adjustsImageWhenHighlighted = NO; 
    [_button1 addTarget:self action:@selector(radiobuttoncheck1:) forControlEvents:UIControlEventTouchUpInside];
    _button1.backgroundColor=[UIColor clearColor];
    
    
    
    _button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button2.adjustsImageWhenHighlighted = NO; 
    [_button2 addTarget:self action:@selector(radiobuttoncheck2:) forControlEvents:UIControlEventTouchUpInside];
    
    _button2.backgroundColor=[UIColor clearColor];
    
    
    _button1.frame = CGRectMake(150,400,300,41);
    _button2.frame = CGRectMake(150,300,300,41);
    [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    
    
    [self.view addSubview:_button1];
    [self.view addSubview:_button2];
    name.delegate=self;
    
    CGRect lb1=CGRectMake(100, 120, 400, 60);
    CGRect lb2=CGRectMake(480, 120, 400 , 60);
    CGRect lb3=CGRectMake(330, 400, 200 , 40);
    CGRect lb4=CGRectMake(330, 300, 200, 40);
    CGRect lb5=CGRectMake(700, 600, 200, 60);
    
    nlable.frame=lb1;
    nlable.font= [UIFont fontWithName:@"Opificio" size:44.f];
    
    name.frame=lb2;
    name.autocapitalizationType = UITextAutocapitalizationTypeSentences;
    quiz.frame=lb3;
    quiz.text=@"Quiz";
    UILabel *quizlb1=[[UILabel alloc]init];
    quizlb1.frame=CGRectMake(400, 404, 400, 30);
    quizlb1.text=@"(for everyone else)";
    quizlb1.textColor=[UIColor blackColor];
    quizlb1.font= [UIFont fontWithName:@"Opificio" size:30.f];
    quizlb1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:quizlb1];
    quiz.textColor=[UIColor blackColor];
    quiz.font= [UIFont fontWithName:@"Opificio" size:34.f];
    skip.frame=lb4;
    skip.text=@"Skip Quiz";
    UILabel *quizlb=[[UILabel alloc]init];
    quizlb.frame=CGRectMake(480, 304, 400, 30);
    quizlb.text=@"(for close family and friends)";
    quizlb.textColor=[UIColor blackColor];
    quizlb.font= [UIFont fontWithName:@"Opificio" size:30.f];
    quizlb.backgroundColor=[UIColor clearColor];
    [self.view addSubview:quizlb];
    skip.textColor=[UIColor blackColor];
    skip.font= [UIFont fontWithName:@"Opificio" size:34.f];
    next.frame=lb5;

}
-(IBAction)radiobuttoncheck1:(id)sender
{
    if(check1==NO)
    {
        NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
        [name1 setObject:@"0" forKey:@"changeview"];
        
        [_button1 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check1=YES;
        check2=NO;
        clickbutton=1;
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
        NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
        [name1 setObject:@"0" forKey:@"changeview"];
        
        [_button2 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check2=YES;
        check1=NO;
        
        clickbutton=2;
        
    }else
    {
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check2=NO;
        check1=YES;
        
    }
}

-(IBAction)nextview:(id)sender
{
    NSUserDefaults *na = [NSUserDefaults standardUserDefaults];
    NSString *val= [na  objectForKey:@"changeview"];
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];
    
    NSLog(@"Textfield text  %d",name.text.length);
    if(name.text.length!=0 && name.text!=nil)
    {
        NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
        [name1 setObject:name.text forKey:@"text"];
        NSString *str=[name1 objectForKey:@"text"];
        NSLog(@"Name for long version %@",str);
    }else
    {
        NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
        [name1 setObject:@"..." forKey:@"text"];
        NSString *str=[name1 objectForKey:@"text"];
        NSLog(@"Name for long version %@",str);
    }
    
    if([val isEqualToString:@"1"])
    {
        NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
        [name1 setObject:@"0" forKey:@"changeview"];
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select option." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [alert show];
        [alert release]; 
    }else
    {
        NSLog(@"My Name %@",name.text);
        if (clickbutton==1)
        {
            
            
            ExtraQuizView *tab1=[[ExtraQuizView alloc]initWithNibName:@"ExtraQuizView" bundle:[NSBundle mainBundle]];	
            
            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];   
            
        }else
        {
            NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
            [valu setInteger:1 forKey:@"skip"];
            if(clickbutton==2 )
            {
                
                
                AudienceView *tab1=[[AudienceView alloc]initWithNibName:@"AudienceView" bundle:[NSBundle mainBundle]];	
                
                [self.navigationController pushViewController:tab1 animated:NO];
                [tab1 release];
                
                
            }else
            {
                UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select option." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                
                
                [alert show];
                [alert release];
            }
        }
    }
    
}
-(IBAction)gobackview:(id)sender
{
    
    InstructionView *Controller=[[InstructionView alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [self.name resignFirstResponder];
    return YES;
    
}
- (void)textFieldDidEndEditing:(UITextField *)textField 
{
    
    textField=name;
} 
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    int limit = 13;
    
    return !([textField.text length]>limit && [string length] > range.length);
    
}
-(void)viewWillAppear:(BOOL)animated
{
    NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
    [name1 setObject:@"1" forKey:@"changeview"];
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
