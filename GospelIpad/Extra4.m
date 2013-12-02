//
//  Extra4.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Extra4.h"
#import "StartScreen13.h"
#import "StartScreen12.h"
#import "GospelIpadViewController.h"



@implementation Extra4
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,text;
@synthesize lable1,back;
int ex4=1;

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
    
    lb1=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"What do you notice is the difference between" forState:UIControlStateNormal];
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
    
    
    lb6=CGRectMake(0, 0, 1024, 768);
    image5=[[UIImageView alloc]initWithFrame:lb6];
    [image5 setImage:[UIImage imageNamed:@"page-no-24@1x.png"]];
    [self.view addSubview:image5];
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

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
    switch (ex4)
    {
        case 1:[self callsmallcircleimages];
            [lable1 setTitle:@"Jesus' soul" forState:UIControlStateNormal];
            ex4=2;
            break;
        case 2:[self callsmallcircleimages1];
            [lable1 setTitle:@"and ours?" forState:UIControlStateNormal];
            ex4=3;
            break;
        case 3:
            lb10=CGRectMake(520,550, 384,65);
            image9=[[UIImageView alloc]initWithFrame:lb10];
            [image9 setImage:[UIImage imageNamed:@"page_13_imperfect@1x.png"]];
            [self.view addSubview:image9];
            [lable1 setTitle:@"Well, ours is imperfect" forState:UIControlStateNormal];
            ex4=4; 
            break;
            
        case 4:[lable1 setTitle:@"but Jesus' is" forState:UIControlStateNormal]; 
            ex4=5; 
            break;
            
        case 5:lb9=CGRectMake(00,550, 384, 65);
            image8=[[UIImageView alloc]initWithFrame:lb9];
            [image8 setImage:[UIImage imageNamed:@"page_13_perfect@1x.png"]];
            [self.view addSubview:image8];
            [lable1 setTitle:@"{PERFECT}." forState:UIControlStateNormal]; 
            ex4=6;
            break;
        case 6:image.hidden=YES;
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            image9.hidden=YES;
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"This is where Jesus comes in, the most significant person who has ever lived." forState:UIControlStateNormal]; 
            
            tab1=[[StartScreen13 alloc]initWithNibName:@"StartScreen13" bundle:[NSBundle mainBundle]];            
            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];  
            break;
    }
}

-(void)callsmallcircleimages
{
    image6=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"circle_small5@1x.png"]];
    lb2=CGRectMake(95,310,165,165);
    image6.frame=lb2;
    image6.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"circle_small1@1x.png"],
                             [UIImage imageNamed:@"circle_small2@1x.png"],
                             [UIImage imageNamed:@"circle_small3@1x.png"],
                             [UIImage imageNamed:@"circle_small4@1x.png"],
                             [UIImage imageNamed:@"circle_small5@1x.png"],nil];
    [image6 setAnimationRepeatCount:1];
    image6.animationDuration= 0.60;
    
    image6.contentMode =UIViewAutoresizingFlexibleWidth;
    [image6 startAnimating];
    [self.view addSubview:image6];
    [self.view bringSubviewToFront:image6];
}
-(void)callsmallcircleimages1
{
    image7=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"circle_small5@1x.png"]];
    lb3=CGRectMake(610, 310, 165,165);
    image7.frame=lb3;
    image7.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"circle_small1@1x.png"],
                             [UIImage imageNamed:@"circle_small2@1x.png"],
                             [UIImage imageNamed:@"circle_small3@1x.png"],
                             [UIImage imageNamed:@"circle_small4@1x.png"],
                             [UIImage imageNamed:@"circle_small5@1x.png"],nil];
    [image7 setAnimationRepeatCount:1];
    image7.animationDuration= 0.60;
    
    image7.contentMode =UIViewAutoresizingFlexibleWidth;
    [image7 startAnimating];
    [self.view addSubview:image7];
    [self.view bringSubviewToFront:image7];
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
    StartScreen12 *backview=[[StartScreen12 alloc]initWithNibName:@"StartScreen12" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image5.hidden=NO;
    
    
    ex4=1;    
    
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
