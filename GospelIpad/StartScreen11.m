//
//  StartScreen11.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen11.h"
#import "StartScreen20.h"
#import "StartScreen19.h"
#import "StartScreen9.h"
#import "GospelIpadViewController.h"


@implementation StartScreen11
@synthesize image1,image,image2,image3,image4,image5;
@synthesize lable1,back,yes,no,text;
int value11=1;


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
    lb1=CGRectMake(12, 100, 1000,86);
    image=[[UIImageView alloc]initWithFrame:lb1];
    [image setImage:[UIImage imageNamed:@"disrespected_gods_name@1x.png"]];
    [self.view addSubview:image];
    
    lb2=CGRectMake(200, 200, 265,265);
    UIImage *img=[UIImage imageNamed:@"yes_btn_selected@1x.png"];
    yes=[UIButton buttonWithType:UIButtonTypeCustom];
    yes.frame=lb2;
    [yes setImage:img forState:UIControlStateNormal];
    [yes setImage:[UIImage imageNamed:@"yes_btn_selected@1x.png"] forState:UIControlStateNormal];
    [yes setImage:[UIImage imageNamed:@"yes_btn@1x.png"] forState:UIControlStateHighlighted];
    [yes setImage:[UIImage imageNamed:@"yes_btn@1x.png"] forState:UIControlStateSelected];
    [yes addTarget:self action:@selector(yesAction:) forControlEvents:UIControlEventTouchUpInside];
    [yes setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:yes];
    [self.view bringSubviewToFront:yes]; 
    
    lb3=CGRectMake(540,200, 265,265);
    UIImage *img1=[UIImage imageNamed:@"no_btn@1x.png"];
    no=[UIButton buttonWithType:UIButtonTypeCustom];
    no.frame=lb3;
    [no setImage:img1 forState:UIControlStateNormal];
    [no setImage:[UIImage imageNamed:@"no_btn@1x.png"] forState:UIControlStateNormal];
    [no setImage:[UIImage imageNamed:@"no_btn_selected@1x.png"] forState:UIControlStateHighlighted];
    [no setImage:[UIImage imageNamed:@"no_btn_selected@1x.png"] forState:UIControlStateSelected];
    [no addTarget:self action:@selector(noAction:) forControlEvents:UIControlEventTouchUpInside];
    [no setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:no];
    [self.view bringSubviewToFront:no];
    [self.view addSubview:image4];
    
    lb5=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb5;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"Have you ever used God’s or Jesus’ Name in a disrespectful way?" forState:UIControlStateNormal];
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];
    
    text=[[UIButton alloc]init];
    text.frame=CGRectMake(900,650 ,100, 100);
    text.backgroundColor=[UIColor clearColor];
    [text setImage:[UIImage imageNamed:@"texticon@1x.png"] forState:UIControlStateNormal];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;
    
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    NSString *str=[perf objectForKey:@"lableoff"]; 
    if([str isEqualToString:@"1"])
    {
        lable1.hidden=YES;
        text.hidden=NO;
        
    }else
    {
        lable1.hidden=NO;
        text.hidden=YES;
        
    }

}
-(void)labelTap
{
    lable1.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
}
-(void)showlable
{
    lable1.hidden=NO;
    text.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];
    
}
-(IBAction)yesAction:(id)sender
{
    
    image.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    [lable1 setTitle:@" Have you ever used God’s or Jesus’ Name in a disrespectful way?" forState:UIControlStateNormal];  
    tab1=[[StartScreen20 alloc]initWithNibName:@"StartScreen20" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];  
    
}
-(IBAction)noAction:(id)sender
{
    image.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    [lable1 setTitle:@" Have you ever used God’s or Jesus’ Name in a disrespectful way?" forState:UIControlStateNormal];
    
    tab=[[StartScreen19 alloc]initWithNibName:@"StartScreen19" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab animated:NO];
    [tab release];  
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
    StartScreen9 *backview=[[StartScreen9 alloc]initWithNibName:@"StartScreen9" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image1.hidden=NO;
    image2.hidden=NO;
    image3.hidden=NO;
    image4.hidden=NO;
    image.hidden=NO;
    yes.hidden=NO;
    no.hidden=NO;
    
    value11=1;    
    
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
