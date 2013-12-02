//
//  StartPresentationView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartPresentationView.h"
#import "StartScreen1.h"
#import "Extra.h"
#import "QuizView.h"
#import "GospelIpadViewController.h"


int value=1;

@implementation StartPresentationView
@synthesize imgview,godis,holy,heavn,lable1,back,holy1,holy2,holy3,holy4,text;

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
      
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]];
    CGRect df=CGRectMake(350,10,344,300);
    
    imgview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"screen_1_bible@1x.png"]];
    imgview.frame=df;
    [self.view addSubview:imgview];
    [self.view bringSubviewToFront:imgview];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //  NSLog(@"touch began");
    [self performSelector:@selector(longTap) withObject:nil afterDelay:4.0];
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (value)
    {
            
        case 1:
            if(next1==1)
            {
                
                lb1=CGRectMake(370,340,200,50);
                godis=[[UILabel alloc]initWithFrame:lb1];
                godis.text=@"GOD IS...";
                godis.backgroundColor=[UIColor clearColor];
                [self.view addSubview:godis];
                [self.view bringSubviewToFront:godis];
                godis.font= [UIFont fontWithName:@"Opificio" size:44.f];
                [lable1 setTitle:@"The Bible says that God, the Creator of the universe, is ..." forState:UIControlStateNormal];
            }else
            {
                lb2=CGRectMake(550,343,200,50);
                holy=[[UILabel alloc]initWithFrame:lb2];
                holy.text=@"HOLY";
                holy.textColor=[UIColor whiteColor];
                holy.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy.backgroundColor=[UIColor clearColor];
                [self.view addSubview:holy];
                [self.view bringSubviewToFront:holy];
                [lable1 setTitle:@"holy" forState:UIControlStateNormal];
            }
            value=2;
            break;
        case 2:
            if(next1==1)
            {
                lb2=CGRectMake(550,343,200,50);
                holy=[[UILabel alloc]initWithFrame:lb2];
                holy.text=@"HOLY";
                holy.textColor=[UIColor whiteColor];
                holy.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy.backgroundColor=[UIColor clearColor];
                [self.view addSubview:holy];
                [self.view bringSubviewToFront:holy]; 
                [lable1 setTitle:@"holy" forState:UIControlStateNormal];
            }else
            {
                lb3=CGRectMake(330,420,250,50);
                heavn=[[UILabel alloc]initWithFrame:lb3];
                heavn.text=@"HEAVEN IS... ";
                heavn.font= [UIFont fontWithName:@"Opificio" size:44.f];
                heavn.backgroundColor=[UIColor clearColor];
                [self.view addSubview:heavn];
                [self.view bringSubviewToFront:heavn]; 
                [lable1 setTitle:@"Heaven is ..." forState:UIControlStateNormal];
                
            }
            value=3;
            
            break;
            
            
        case 3:
            if(next1==1)
            {
                lb3=CGRectMake(330,420,250,50);
                heavn=[[UILabel alloc]initWithFrame:lb3];
                heavn.text=@"HEAVEN IS... ";
                heavn.font= [UIFont fontWithName:@"Opificio" size:44.f];
                heavn.backgroundColor=[UIColor clearColor];
                [self.view addSubview:heavn];
                [self.view bringSubviewToFront:heavn]; 
                [lable1 setTitle:@"Heaven is ..." forState:UIControlStateNormal];
            }
            else
            {
                lb4=CGRectMake(550,420,200,50);
                holy1=[[UILabel alloc]initWithFrame:lb4];
                holy1.text=@"HOLY";
                holy1.textColor=[UIColor whiteColor];
                holy1.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy1.backgroundColor=[UIColor clearColor];
                [self.view addSubview: holy1];
                [self.view bringSubviewToFront:holy1];  
                [lable1 setTitle:@"holy" forState:UIControlStateNormal];
                
            }
            value=4;            
            break;
            
            
        case 4:
            if(next1==1)
            {
                lb4=CGRectMake(550,420,200,50);
                holy1=[[UILabel alloc]initWithFrame:lb4];
                holy1.text=@"HOLY";
                holy1.textColor=[UIColor whiteColor];
                holy1.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy1.backgroundColor=[UIColor clearColor];
                [self.view addSubview: holy1];
                [self.view bringSubviewToFront:holy1]; 
                
                [lable1 setTitle:@"holy" forState:UIControlStateNormal];
                
            }else
            {
                lb4=CGRectMake(270,500,150,50);
                holy2=[[UILabel alloc]initWithFrame:lb4];
                holy2.text=@"HOLY";
                holy2.textColor=[UIColor whiteColor];
                holy2.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy2.backgroundColor=[UIColor clearColor];
                [self.view addSubview: holy2];
                [self.view bringSubviewToFront:holy2]; 
                
                lb2=CGRectMake(390,500,150,50);
                holy3=[[UILabel alloc]initWithFrame:lb2];
                holy3.text=@"MEANS";
                holy3.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy3.backgroundColor=[UIColor clearColor];
                [self.view addSubview:holy3];
                [self.view bringSubviewToFront:holy3]; 
                
                [lable1 setTitle:@"and holy simply means" forState:UIControlStateNormal];
            }
            value=5;         
            break;
            
        case 5:
            if(next1==1)
            {
                
                lb4=CGRectMake(270,500,150,50);
                holy2=[[UILabel alloc]initWithFrame:lb4];
                holy2.text=@"HOLY";
                holy2.textColor=[UIColor whiteColor];
                holy2.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy2.backgroundColor=[UIColor clearColor];
                [self.view addSubview: holy2];
                [self.view bringSubviewToFront:holy2]; 
                
                lb2=CGRectMake(390,500,150,50);
                holy3=[[UILabel alloc]initWithFrame:lb2];
                holy3.text=@"MEANS";
                holy3.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy3.backgroundColor=[UIColor clearColor];
                [self.view addSubview:holy3];
                [self.view bringSubviewToFront:holy3]; 
                
                [lable1 setTitle:@"and holy simply means" forState:UIControlStateNormal];
            }else
            {
                lb2=CGRectMake(550,500,200,50);
                holy4=[[UILabel alloc]initWithFrame:lb2];
                holy4.text=@"PERFECT";
                holy4.textColor=[UIColor whiteColor];
                holy4.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy4.backgroundColor=[UIColor clearColor];
                [self.view addSubview:holy4];
                [self.view bringSubviewToFront:holy4]; 
                [lable1 setTitle:@"PERFECT." forState:UIControlStateNormal];
            }
            value=6;            
            break;
            
        case 6:
            if(next1==1)
            {
                lb2=CGRectMake(550,500,200,50);
                holy4=[[UILabel alloc]initWithFrame:lb2];
                holy4.text=@"PERFECT";
                holy4.textColor=[UIColor whiteColor];
                holy4.font= [UIFont fontWithName:@"Opificio" size:44.f];
                holy4.backgroundColor=[UIColor clearColor];
                [self.view addSubview:holy4];
                [self.view bringSubviewToFront:holy4]; 
                [lable1 setTitle:@"PERFECT." forState:UIControlStateNormal];                
                
                value=7;
            }else
            {
                godis.hidden=YES;
                holy.hidden=YES;
                holy1.hidden=YES;
                holy2.hidden=YES;
                holy3.hidden=YES;
                holy4.hidden=YES;
                heavn.hidden=YES;
                lable1.titleLabel.text=nil;
                
                
                tab1=[[Extra alloc]initWithNibName:@"Extra" bundle:[NSBundle mainBundle]];            
                [self.navigationController pushViewController:tab1 animated:NO];
                [tab1 release];  
            }
            
            break;
        case 7: 
            if(next1==1)
            {godis.hidden=YES;
                holy.hidden=YES;
                holy1.hidden=YES;
                holy2.hidden=YES;
                holy3.hidden=YES;
                holy4.hidden=YES;
                heavn.hidden=YES;
                lable1.titleLabel.text=nil;
                
                tab1=[[Extra alloc]initWithNibName:@"Extra" bundle:[NSBundle mainBundle]];            
                [self.navigationController pushViewController:tab1 animated:NO];
                [tab1 release];
            }
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
-(IBAction)gobackview:(id)sender
{
    QuizView *Controller=[[QuizView alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb10=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb10;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=2;
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];
    
    
    
    text.frame=CGRectMake(900,650 , 100, 100);
    text.backgroundColor=[UIColor clearColor];
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
    
    NSUserDefaults *pref = [NSUserDefaults standardUserDefaults];
    next1=[pref integerForKey:@"skip"];
    
    
    if(next1==1)
    {
        lable1.titleLabel.numberOfLines=2;
        lable1.titleLabel.lineBreakMode=YES;
        [lable1 setTitle:@"   A summary of the message of the entire Bible in 6.5 minutes.                       It would be great to see what you think of it." forState:UIControlStateNormal];
        
        
    }else
    {
        lb1=CGRectMake(370,340,200,50);
        godis=[[UILabel alloc]initWithFrame:lb1];
        godis.text=@"GOD IS...";
        godis.backgroundColor=[UIColor clearColor];
        [self.view addSubview:godis];
        [self.view bringSubviewToFront:godis];
        godis.font= [UIFont fontWithName:@"Opificio" size:44.f];
        [lable1 setTitle:@"The Bible says that God, the Creator of the universe, is ..." forState:UIControlStateNormal];
    }
    
    value=1;
    
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
