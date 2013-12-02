//
//  StartScreen19.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen19.h"
#import "StartScreen21.h"
#import "StartScreen22.h"
#import "StartScreen11.h"
#import "GospelIpadViewController.h"


@implementation StartScreen19
@synthesize image2,image3,image4,image7,image8,image6,lable,image,image1,yes,no,back,text;


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
    lb2=CGRectMake(240, 50, 550,86);
    image=[[UIImageView alloc]initWithFrame:lb2];
    [image setImage:[UIImage imageNamed:@"god_first@1x.png"]];
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
    
    lb8=CGRectMake(0, 680, 1024, 90);
    lable.frame=lb8;
    lable.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable.titleLabel.numberOfLines=4;
    lable.titleLabel.lineBreakMode=YES;
    [lable setTitle:@" Have you always put God first in your life?" forState:UIControlStateNormal];
    lable.backgroundColor=[UIColor blackColor];
    [lable addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable];
    
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
        lable.hidden=YES;
        text.hidden=NO;
        
    }else
    {
        lable.hidden=NO;
        text.hidden=YES;
        
    }
    
    
    

}
-(void)labelTap
{
    lable.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
    
}
-(void)showlable
{
    lable.hidden=NO;
    text.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];
    
}
-(IBAction)yesAction:(id)sender
{
    
    image.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    [lable setTitle:@" Have you always put God first in your life?" forState:UIControlStateNormal];
    
    tab1=[[StartScreen21 alloc]initWithNibName:@"StartScreen21" bundle:[NSBundle mainBundle]];           
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
}
-(IBAction)noAction:(id)sender
{
    image.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    [lable setTitle:@" Have you always put God first in your life?" forState:UIControlStateNormal];
    
    tab=[[StartScreen22 alloc]initWithNibName:@"StartScreen22" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab animated:NO];
    [tab release];  
    
}
-(IBAction)gobackview:(id)sender
{
    
    StartScreen11 *backview=[[StartScreen11 alloc]initWithNibName:@"StartScreen11" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
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
