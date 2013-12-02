//
//  newView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "newView.h"
#import "StartScreen1.h"
#import "StartScreen2.h"
#import "GospelIpadViewController.h"


int newval=1;
@implementation newView
@synthesize lable1,image10,image11;
@synthesize image6,image7,image8,lable2,lable3,lable4,image12,image9,image13,text;
@synthesize lable5,back;

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
    lb10=CGRectMake(155, 80, 277, 374);
    image10=[[UIImageView alloc]initWithFrame:lb10];
    [image10 setImage:[UIImage imageNamed:@"soul@1x.png"]];
    [self.view addSubview:image10];
    
    lb7=CGRectMake(160, 510, 269, 71);
    image6=[[UIImageView alloc]initWithFrame:lb7];
    image6.backgroundColor=[UIColor clearColor];
    [image6 setImage:[UIImage imageNamed:@"all_of_us@1x.png"]];
    [self.view addSubview:image6];
    
    
    
    image9=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"circle_blank9@1x.png"]];
    lb14=CGRectMake(155, 80,277, 374);
    image9.frame=lb14;
    [self.view addSubview:image9];
    
    
    lb11=CGRectMake(480, 300, 233, 146);
    image8=[[UIImageView alloc]initWithFrame:lb11];
    [image8 setImage:[UIImage imageNamed:@"crossbars@1x.png"]];
    [self.view addSubview:image8];
    
    lb12=CGRectMake(510,190, 250, 60);
    image12=[[UIImageView alloc]initWithFrame:lb12];
    [image12 setImage:[UIImage imageNamed:@"heaven@1x.png"]];
    [self.view addSubview:image12];
    
    lb13=CGRectMake(500,500, 250, 60);
    image13=[[UIImageView alloc]initWithFrame:lb13];
    [image13 setImage:[UIImage imageNamed:@"hell@1x.png"]];
    [self.view addSubview:image13];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
    switch (newval)
    {
            
        case 1:[self callcrossimage];
            [lable1 setTitle:@"and there is no third place. " forState:UIControlStateNormal];
            newval=2;
            break;
        case 2:
            
            image7.hidden=YES;
            image8.hidden=YES;
            image9.hidden=YES;
            image10.hidden=YES;
            image11.hidden=YES;
            image12.hidden=YES;
            image13.hidden=YES;
            lable1.titleLabel.text=nil;
            StartScreen2 *tab=[[StartScreen2 alloc]initWithNibName:@"StartScreen2" bundle:[NSBundle mainBundle]];     
            [self.navigationController pushViewController:tab animated:NO];
            [tab release]; 
            break;
    }
}
-(void)longTap
{
    NSLog(@"Long Press");
    GospelIpadViewController *Controller=[[GospelIpadViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)callcrossimage
{
    image11=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cross8@1x.png"]];
    lb9=CGRectMake(780, 240, 218, 280);
    image11.frame=lb9;
    image11.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"cross1@1x.png"],
                              [UIImage imageNamed:@"cross2@1x.png"],
                              [UIImage imageNamed:@"cross3@1x.png"],
                              [UIImage imageNamed:@"cross4@1x.png"],
                              [UIImage imageNamed:@"cross5@1x.png"],
                              [UIImage imageNamed:@"cross6@1x.png"],
                              [UIImage imageNamed:@"cross7@1x.png"],
                              [UIImage imageNamed:@"cross8@1x.png"],nil];
    [image11 setAnimationRepeatCount:1];
    image11.animationDuration= 1.0;
    
    image11.contentMode =UIViewAutoresizingFlexibleWidth;
    [image11 startAnimating];
    [self.view addSubview:image11];
    [self.view bringSubviewToFront:image11];
}

-(IBAction)gobackview:(id)sender
{
    
    StartScreen1 *backview=[[StartScreen1 alloc]initWithNibName:@"extra" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    lb10=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb10;
    [lable1 setTitle:@"in Hell" forState:UIControlStateNormal];
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
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
    
    image8.hidden=NO;
    image9.hidden=NO;
    image10.hidden=NO;
    image12.hidden=NO;
    image13.hidden=NO;
    
    newval=1;
    
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
