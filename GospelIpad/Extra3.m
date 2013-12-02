//
//  Extra3.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Extra3.h"
#import "StartScreen4.h"
#import "StartScreen3.h"
#import "GospelIpadViewController.h"

@implementation Extra3
@synthesize image,image1,lable1,image2,image3;
@synthesize image4,image5,image6,image7,image8,lable2,lable3,lable4,text;
@synthesize lable5,image9,back,image11;
int ex3=1;


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
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]];    lb2=CGRectMake(140, 30, 208, 193);
    
    lb5=CGRectMake(40, 20, 340, 317);
    image4=[[UIImageView alloc]initWithFrame:lb5];
    [image4 setImage:[UIImage imageNamed:@"speech_bubble_plead@1x.png"]];
    [self.view addSubview:image4];
    
    lb7=CGRectMake(370,440, 294, 160);
    image6=[[UIImageView alloc]initWithFrame:lb7];
    image6.backgroundColor=[UIColor clearColor];
    [image6 setImage:[UIImage imageNamed:@"handcuffs@1x.png"]];
    [self.view addSubview:image6];

}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb1=CGRectMake(0, 680, 1024, 90);  
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=3;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"  Then after a huge police hunt they catch the murderer            and bring him to court and he pleads" forState:UIControlStateNormal];
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
    image4.hidden=NO;
    image5.hidden=NO;
    ex3=1;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (ex3)
    {
        case 1:
            
            lb6=CGRectMake(390, 290, 251, 170);
            image5=[[UIImageView alloc]initWithFrame:lb6];
            [image5 setImage:[UIImage imageNamed:@"guilty@1x.png"]];
            [self.view addSubview:image5];
            
            [lable1 setTitle:@" guilty." forState:UIControlStateNormal];
            
            ex3=2;
            break;  
            
            
        case 2: 
            [lable1 setTitle:@"But to everyone's horror the Judge says " forState:UIControlStateNormal];
            
            ex3=3;
            break;
        case 3:
            lb8=CGRectMake(660, 20, 340,317);
            image7=[[UIImageView alloc]initWithFrame:lb8];
            [image7 setImage:[UIImage imageNamed:@"speech_bubble_judge@1x.png"]];
            [self.view addSubview:image7];
            [lable1 setTitle:@"\"I'm a loving judge. I'm just going to let you off\"" forState:UIControlStateNormal];
            ex3=4;
            break;
        case 4:image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            lb13=CGRectMake(380, 60, 290,382);
            image8=[[UIImageView alloc]initWithFrame:lb13];
            [image8 setImage:[UIImage imageNamed:@"fist@1x.png"]];
            [self.view addSubview:image8];
            
            lb13=CGRectMake(320, 470, 400, 60);
            lable5=[[UILabel alloc]initWithFrame:lb13];
            lable5.text=@"WOULD THAT SOUND";
            lable5.font= [UIFont fontWithName:@"Opificio" size:44.f];
            lable5.textColor=[UIColor grayColor];
            lable5.lineBreakMode=UILineBreakModeWordWrap;
            lable5.numberOfLines=2;
            lable5.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable5];
            
            lb9=CGRectMake(360, 530, 150,50);
            lable2=[[UILabel alloc]initWithFrame:lb9];
            lable2.text=@"RIGHT";
            lable2.font= [UIFont fontWithName:@"Opificio" size:44.f];
            lable2.textColor=[UIColor whiteColor];
            lable2.lineBreakMode=UILineBreakModeWordWrap;
            lable2.numberOfLines=2;
            lable2.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable2];
            
            
            lb10=CGRectMake(483, 530, 250, 50);
            lable3=[[UILabel alloc]initWithFrame:lb10];
            lable3.text=@"TO YOU ?";
            lable3.font= [UIFont fontWithName:@"Opificio" size:44.f];
            lable3.textColor=[UIColor grayColor];
            lable3.lineBreakMode=UILineBreakModeWordWrap;
            lable3.numberOfLines=2;
            lable3.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable3];
            
            [lable1 setTitle:@"Would that sound right to you? {No}." forState:UIControlStateNormal];
            
            ex3=5;
            break;
        case 5:image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            image9.hidden=YES;
            lable2.hidden=YES;
            lable3.hidden=YES;
            lable5.hidden=YES;
            image11.hidden=YES;
            lable1.titleLabel.text=Nil;
            tab1=[[StartScreen4 alloc]initWithNibName:@"StartScreen4" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];  
            break;
            
            
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
    StartScreen3 *backview=[[StartScreen3 alloc]initWithNibName:@"StartScreen3" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
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
