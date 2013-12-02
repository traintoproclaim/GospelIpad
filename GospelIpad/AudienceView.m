//
//  AudienceView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "AudienceView.h"
#import "GospelIpadViewController.h"
#import "ExtraSkipView.h"
#import "Questions1.h"

@implementation AudienceView
@synthesize name,next;
@synthesize lb3,lb2,lb1,data,inst;
@synthesize _button1,_button2,_button3;
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
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]];
    check1=NO;
    check2=NO;
    check3=NO;
    
    
    _button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button1.adjustsImageWhenHighlighted = NO; 
    [_button1 addTarget:self action:@selector(radiobuttoncheck1:) forControlEvents:UIControlEventTouchUpInside];
    _button1.backgroundColor=[UIColor clearColor];
    
    
    
    _button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button2.adjustsImageWhenHighlighted = NO; 
    [_button2 addTarget:self action:@selector(radiobuttoncheck2:) forControlEvents:UIControlEventTouchUpInside];
    
    _button2.backgroundColor=[UIColor clearColor];
    
    
    _button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    _button3.adjustsImageWhenHighlighted = NO; 
    [_button3 addTarget:self action:@selector(radiobuttoncheck3:) forControlEvents:UIControlEventTouchUpInside];
    
    _button3.backgroundColor=[UIColor clearColor];
    
    
    
    
    
    _button1.frame = CGRectMake(210,300,300,41);
    _button2.frame = CGRectMake(210,400,300,41);
    _button3.frame = CGRectMake(210,500,300,41);
    
    
    [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_button1 setTitle:@"menu" forState:(UIControlEventTouchUpInside)];
    _button1.titleLabel.textColor=[UIColor blackColor];
    _button1.titleLabel.textAlignment=UITextAlignmentRight;
    
    
    
    
    [self.view addSubview:_button1];
    [self.view addSubview:_button2];
    [self.view addSubview:_button3];
    name.delegate=self;
    name.autocapitalizationType = UITextAutocapitalizationTypeSentences;
    
    
    CGRect lb5=CGRectMake(390, 300, 250, 40);
    CGRect lb6=CGRectMake(390, 400, 250, 40);
    CGRect lb7=CGRectMake(390, 500, 250, 40);
    CGRect lb8=CGRectMake(700, 600, 200, 60);
    CGRect bt1=CGRectMake(480, 120, 400 , 60);
    CGRect nlb=CGRectMake(100, 120, 400, 60);
    
    lb1.frame=lb5;
    lb1.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lb2.frame=lb6;
    lb2.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lb3.frame=lb7;
    lb3.font= [UIFont fontWithName:@"Opificio" size:34.f];
    next.frame=lb8;
    name.frame=bt1;
    inst.frame=nlb;
    inst.font= [UIFont fontWithName:@"Opificio" size:44.f];
    
    
    clickbutton=0;
    

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
        check1=YES;
        check2=NO;
        check3=NO;
        
        NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
        [name1 setInteger:0 forKey:@"gender"];
        
        NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
        [pref2 setInteger:1 forKey:@"val"];
        clickbutton=1;
    }else
    {
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
        [pref2 setInteger:0 forKey:@"val"];
        check1=NO;
        check2=YES;
        check3=YES;
        
    }
}
-(IBAction)radiobuttoncheck2:(id)sender
{
    if(check2==NO)
    {
        [_button2 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        
        check2=YES;
        check1=NO;
        check3=NO;
        
        clickbutton=2;
        NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
        [pref2 setInteger:1 forKey:@"val"];
        
        NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
        [name1 setInteger:1 forKey:@"gender"];
    }else
    {
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check2=NO;
        check1=YES;
        check3=YES;
        NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
        [pref2 setInteger:0 forKey:@"val"];
    }
}
-(IBAction)radiobuttoncheck3:(id)sender
{
    if(check3==NO)
    {
        [_button3 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        check3=YES;
        
        check2=NO;
        check1=NO;
        NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
        [name1 setInteger:2 forKey:@"gender"];
        clickbutton=3;
        NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
        [pref2 setInteger:1 forKey:@"val"];
    }else
    {
        [_button3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        check3=NO;
        check2=YES;
        check1=YES;
        NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
        [pref2 setInteger:0 forKey:@"val"];
    }
}

-(IBAction)nextview:(id)sender
{ 
    NSUserDefaults *pref = [NSUserDefaults standardUserDefaults];
    next1=[pref integerForKey:@"skip"];
    if(next1==0)
    {
        if((clickbutton==1||clickbutton==2||clickbutton==3))
        {
            NSString *k=name.text;
            
            NSString *space=[k stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            
            if(space.length!=0 && ![name.text isEqualToString:@"(null)"]&& name.text.length!=0 && ![space isEqualToString:@"null"])
            {   
                
                NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
                [pref2 setInteger:1 forKey:@"val"];
                NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
                [name1 setObject:name.text forKey:@"name1"];
                
                NSLog(@"Audience Name :%@",name.text);
                Questions1 *tab1=[[Questions1 alloc]initWithNibName:@"Questions1" bundle:[NSBundle mainBundle]];	
                
                [self.navigationController pushViewController:tab1 animated:NO];
                [tab1 release]; 
                
            }
            else
            {
                UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please enter audience name ." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]; 
                [alert show];
                [alert release];
                
            }
        }else
        {
            NSUserDefaults *value1 = [NSUserDefaults standardUserDefaults];
            [value1 setInteger:0 forKey:@"val"];
            UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select audience name and gender." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert show];
            [alert release];
            
            
        }
    }else
    {
        if((clickbutton==1||clickbutton==2||clickbutton==3))
        {
            NSString *k=name.text;
            
            NSString *space=[k stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            
            
            if(space.length!=0  && ![name.text isEqualToString:@"(null)"] && name.text.length!=0 && ![space isEqualToString:@"null"])
            {   
                NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
                [name1 setObject:name.text forKey:@"name1"];
                
                NSLog(@"Audience Name :%@",name.text);
                
                ExtraSkipView *tab1=[[ExtraSkipView alloc]initWithNibName:@"ExtraSkipView" bundle:[NSBundle mainBundle]];	
                
                [self.navigationController pushViewController:tab1 animated:NO];
                [tab1 release]; 
                
            }
            else
            {
                UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please enter audience name." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]; 
                [alert show];
                [alert release];
            }
        }else
        {
            
            UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please select audience name and gender." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            
            [alert show];
            [alert release];
            
        }
        
    }
    
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
    
    int limit = 14;
    
    return !([textField.text length]>limit && [string length] > range.length);
    
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
