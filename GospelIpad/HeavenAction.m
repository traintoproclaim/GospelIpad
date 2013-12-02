//
//  HeavenAction.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "HeavenAction.h"
#import "StartScreen15.h"
#import "MailView.h"
#import "HellAction.h"
#import "GospelIpadViewController.h"
#import "Extra10.h"

@implementation HeavenAction
@synthesize image1,image2,image3,lable1,lable2,lable3,yes,no,text
;
@synthesize lable4,back;


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
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]];    // Do any additional setup after loading the view from its nib.
    
    lable1=[[UILabel alloc]init];
    lable1.frame=CGRectMake(0, 90, 1024, 100);
    lable1.text=@"So have you 'Turned' and 'Surrendered' your life to Jesus?";
    lable1.textColor=[UIColor blackColor];
    lable1.font= [UIFont fontWithName:@"Opificio" size:38.f];
    
    lable1.textAlignment=UITextAlignmentCenter;
    lable1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable1];
    
    lb4=CGRectMake(0, 680, 1024, 90);
    lable4.frame=lb4;
    lable4.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable4.titleLabel.numberOfLines=4;
    lable4.titleLabel.lineBreakMode=YES;
    [lable4 setTitle:@"So have you 'Turned' and 'Surrendered' your life to Jesus?" forState:UIControlStateNormal];
    lable4.backgroundColor=[UIColor blackColor];
    [lable4 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable4.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable4];
    
    text=[[UIButton alloc]init];
    text.frame=CGRectMake(900,650 ,100, 100);
    text.backgroundColor=[UIColor clearColor];
    [text setImage:[UIImage imageNamed:@"texticon@1x.png"] forState:UIControlStateNormal];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;
    
    
    lb1=CGRectMake(70, 180,354,238);
    image1=[[UIImageView alloc]initWithFrame:lb1];
    [image1 setImage:[UIImage imageNamed:@"turn_away_small@1x.png"]];
    [self.view addSubview:image1];
    
    lb2=CGRectMake(600, 180,354,277);
    image2=[[UIImageView alloc]initWithFrame:lb2];
    [image2 setImage:[UIImage imageNamed:@"surrender_small@1x.png"]];
    [self.view addSubview:image2];
    
    
    
    yes=[UIButton buttonWithType:UIButtonTypeCustom];
    yes.frame=CGRectMake(330, 450, 130,80);
    
    [yes setImage:[UIImage imageNamed:@"yes_1@1x.png"] forState:UIControlStateNormal];
    [yes setImage:[UIImage imageNamed:@"yes_1@1x.png"] forState:UIControlStateHighlighted];
    [yes setImage:[UIImage imageNamed:@"yes_1@1x.png"] forState:UIControlStateSelected];
    
    [yes addTarget:self action:@selector(yesAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [yes setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:yes];
    [self.view bringSubviewToFront:yes]; 
    
    
    
    no=[UIButton buttonWithType:UIButtonTypeCustom];
    no.frame=CGRectMake(520,450, 130,80);
    [no setImage:[UIImage imageNamed:@"no_1@1x.png"] forState:UIControlStateNormal];
    [no setImage:[UIImage imageNamed:@"no_1@1x.png"] forState:UIControlStateHighlighted];
    [no setImage:[UIImage imageNamed:@"no_1@1x.png"] forState:UIControlStateSelected];
    [no addTarget:self action:@selector(noAction:) forControlEvents:UIControlEventTouchUpInside];
    [no setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:no];
    [self.view bringSubviewToFront:no];
    
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    
    NSString *str=[perf objectForKey:@"lableoff"]; 
    if([str isEqualToString:@"1"])
    {
        lable4.hidden=YES;
        text.hidden=NO;
        
    }else
    {
        lable4.hidden=NO;
        text.hidden=YES;
        
    }

}
-(void)labelTap
{
    lable4.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
}
-(void)showlable
{
    lable4.hidden=NO;
    text.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];
    
}
-(IBAction)yesAction:(id)sender
{
    lable1.hidden=YES;
    lable4.hidden=YES;
    image1.hidden=YES;
    image2.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    lable1.text=@"So have you 'Turned' and 'Surrendered' your life to Jesus?";
    
    tab2=[[MailView alloc]initWithNibName:@"MailView" bundle:[NSBundle mainBundle]];           
    [self.navigationController pushViewController:tab2 animated:NO];
    [tab2 release];  
    
}
-(IBAction)noAction:(id)sender
{ 
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:0 forKey:@"hell"];
    lable1.hidden=YES;
    lable4.hidden=YES;
    image1.hidden=YES;
    image2.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    lable1.text=@"So have you 'Turned' and 'Surrendered' your life to Jesus?";
    tab1=[[HellAction alloc]initWithNibName:@"HellAction" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release]; 
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
    image1.hidden=NO;
    image2.hidden=NO;
    yes.hidden=NO;
    no.hidden=NO;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:4.0];
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
