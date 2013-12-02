//
//  StartScreen21.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen21.h"
#import "StartScreen22.h"
#import "StartScreen19.h"
#import "GospelIpadViewController.h"


@implementation StartScreen21
@synthesize image2,image3,image4,image7,image8,image6,lable,image,image1,text;
@synthesize back;
int value21=1;
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
    
    
    lb12=CGRectMake(0, 680, 1024, 90);
    lable.frame=lb12;
    lable.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable.titleLabel.numberOfLines=4;
    lable.titleLabel.lineBreakMode=YES;
    [lable setTitle:@"No one can claim to always have done this all their life." forState:UIControlStateNormal];
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
-(IBAction)gobackview:(id)sender
{
    StartScreen19 *backview=[[StartScreen19 alloc]initWithNibName:@"StartScreen19" bundle:nil];
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
    
    switch (value21)
    {
        case 1:
            image.hidden=YES;
            image1.hidden=YES;
            tab1=[[StartScreen22 alloc]initWithNibName:@"StartScreen22" bundle:[NSBundle mainBundle]];           
            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];
            value21=2;
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
    image1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guilty8@1x.png"]];
    lb3=CGRectMake(-10, -60, 470, 320);
    image1.frame=lb3;
    image1.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"guilty3@1x.png"],
                             [UIImage imageNamed:@"guilty4@1x.png"],
                             [UIImage imageNamed:@"guilty5@1x.png"],
                             [UIImage imageNamed:@"guilty6@1x.png"],
                             [UIImage imageNamed:@"guilty7@1x.png"],
                             [UIImage imageNamed:@"guilty8@1x.png"],nil];
    [image1 setAnimationRepeatCount:1];
    image1.animationDuration= 0.60;
    
    image1.contentMode =UIViewAutoresizingFlexibleWidth;
    [image1 startAnimating];
    [self.view addSubview:image1];
    [self.view bringSubviewToFront:image1];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image.hidden=NO;
    value21=1;    
    
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
