//
//  StartScreen7.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen7.h"
#import "StartScreen8.h"
#import "StartScreen9.h"
#import "StartScreen6.h"
#import "StartScreen5.h"
#import "GospelIpadViewController.h"

@implementation StartScreen7
@synthesize image,lable2;
@synthesize yes,no,back,text;
int value7=1;


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
    lb1=CGRectMake(300, 50, 442,86);
    image=[[UIImageView alloc]initWithFrame:lb1];
    [image setImage:[UIImage imageNamed:@"stolen@1x.png"]];
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
    
    lb4=CGRectMake(0, 680, 1024, 90);
    lable2.frame=lb4;
    lable2.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable2.titleLabel.numberOfLines=4;
    lable2.titleLabel.lineBreakMode=YES;
    [lable2 setTitle:@" Have you ever taken something that didn't belong to you;             a paper clip or pen, downloaded pirated music etc?" forState:UIControlStateNormal];
    lable2.backgroundColor=[UIColor blackColor];
    [lable2 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable2.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable2];
    
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
        lable2.hidden=YES;
        text.hidden=NO;
        
    }else
    {
        lable2.hidden=NO;
        text.hidden=YES;
        
    }
    

}
-(void)labelTap
{
    lable2.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
    
}
-(void)showlable
{
    lable2.hidden=NO;
    text.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];
    
    
}
-(IBAction)yesAction:(id)sender
{
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"stolen"];
    
    image.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    [lable2 setTitle:@" Have you ever taken something that didn't belong to you;             a paper clip or pen, downloaded pirated music etc?" forState:UIControlStateNormal];
    
    tab1=[[StartScreen8 alloc]initWithNibName:@"StartScreen8" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];  
    
}
-(IBAction)noAction:(id)sender
{
    NSUserDefaults *perf1=[NSUserDefaults standardUserDefaults];
    [perf1 setObject:@"0" forKey:@"stolen"];
    image.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    [lable2 setTitle:@" Have you ever taken something that didn't belong to you;             a paper clip or pen, downloaded pirated music etc?" forState:UIControlStateNormal];
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"next1"];
    tab2=[[StartScreen9 alloc]initWithNibName:@"StartScreen9" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab2 animated:NO];
    [tab2 release];  
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
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    NSString *str= [perf objectForKey:@"next2"];
    if([str isEqualToString:@"1"])
    {
        StartScreen5 *backview=[[StartScreen5 alloc]initWithNibName:@"StartScreen5" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
        
    }else
    {
        StartScreen6 *backview=[[StartScreen6 alloc]initWithNibName:@"StartScreen6" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    }
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image.hidden=NO;
    yes.hidden=NO;
    no.hidden=NO;
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
