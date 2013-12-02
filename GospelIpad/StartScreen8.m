//
//  StartScreen8.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen8.h"
#import "StartScreen9.h"
#import "StartScreen7.h"
#import "GospelIpadViewController.h"

@implementation StartScreen8
@synthesize image,image1,lable2,image2,back,text;

int value8=1;
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
    
    
    lb2=CGRectMake(120,250, 800,140);
    image=[[UIImageView alloc]initWithFrame:lb2];
    [image setImage:[UIImage imageNamed:@"thieves@1x.png"]];
    [self.view addSubview:image];
    
    lb3=CGRectMake(0, 680, 1024, 90);
    lable2.frame=lb3;
    lable2.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable2.titleLabel.numberOfLines=4;
    lable2.titleLabel.lineBreakMode=YES;
    [lable2 setTitle:@"Me too. That would make us both THIEVES." forState:UIControlStateNormal];
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

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
    switch (value8)
    {
        case 1:[self callgiltyanimation];
            value8=2;
            break;
        case 2:image2.hidden=YES;
            [lable2 setTitle:@"Me too. That would make us both THIEVES." forState:UIControlStateNormal];
            NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
            [perf setObject:@"2" forKey:@"next1"];
            tab1=[[StartScreen9 alloc]initWithNibName:@"StartScreen9" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];  
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


-(void)callgiltyanimation
{
    image2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guilty8@1x.png"]];
    lb2=CGRectMake(-50, -150, 1024, 768);
    image2.frame=lb2;
    image2.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"guilty3@1x.png"],
                             [UIImage imageNamed:@"guilty4@1x.png"],
                             [UIImage imageNamed:@"guilty5@1x.png"],
                             [UIImage imageNamed:@"guilty6@1x.png"],
                             [UIImage imageNamed:@"guilty7@1x.png"],
                             [UIImage imageNamed:@"guilty8@1x.png"],nil];
    [image2 setAnimationRepeatCount:1];
    image2.animationDuration= 0.60;
    
    image2.contentMode =UIViewAutoresizingFlexibleWidth;
    [image2 startAnimating];
    [self.view addSubview:image2];
    [self.view bringSubviewToFront:image2];
}
-(IBAction)gobackview:(id)sender
{
    StartScreen7 *backview=[[StartScreen7 alloc]initWithNibName:@"StartScreen7" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image.hidden=NO;
    value8=1;
    
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
