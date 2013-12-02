//
//  newView1.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "newView1.h"
#import "Extra1.h"
#import "GospelIpadViewController.h"

@implementation newView1
@synthesize lable1,image,lable2,image1,lable3,image2,image3,image4,image5,image6,image9,image7,image8,image10,image11;
@synthesize lable5,lable4,back,image12,text;
int newval1=1;
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
    lb6=CGRectMake(50, 70, 430,410);
    image1=[[UIImageView alloc]initWithFrame:lb6];
    [image1 setImage:[UIImage imageNamed:@"body_with_soul@1x.png"]];
    [self.view addSubview:image1];
    lb7=CGRectMake(490, 300, 233, 146);
    image2=[[UIImageView alloc]initWithFrame:lb7];
    [image2 setImage:[UIImage imageNamed:@"crossbar_two_arrows@1x.png"]];
    [self.view addSubview:image2];
    lb8=CGRectMake(530,190, 250, 60);
    image3=[[UIImageView alloc]initWithFrame:lb8];
    [image3 setImage:[UIImage imageNamed:@"heaven@1x.png"]];
    [self.view addSubview:image3];
    lb5=CGRectMake(540,500, 250, 60);
    image4=[[UIImageView alloc]initWithFrame:lb5];
    [image4 setImage:[UIImage imageNamed:@"hell@1x.png"]];
    [self.view addSubview:image4];
    lb4=CGRectMake(790, 70, 190,271);
    image5=[[UIImageView alloc]initWithFrame:lb4];
    [image5 setImage:[UIImage imageNamed:@"perfect_record@1x.png"]];
    [self.view addSubview:image5];

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (newval1)
    {
            
        case 1:[self callcrossimage];
            [lable3 setTitle:@"and no one has one," forState:UIControlStateNormal];
            newval1=2;
            break;
        case 2:lable2.hidden=YES;
            lable4.hidden=YES;
            lable5.hidden=YES;
            lable3.titleLabel.text=nil;
            image.hidden=YES;
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            image9.hidden=YES;
            image10.hidden=YES;
            image11.hidden=YES;
            image12.hidden=YES;
            
            
            tab1=[[Extra2 alloc]initWithNibName:@"Extra2" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release]; 
            break;
            
    }
}
-(void)callcrossimage
{
    image9=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cross8@1x.png"]];
    lb9=CGRectMake(780, 70, 218, 280); 
    image9.frame=lb9;
    image9.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"cross1@1x.png"],
                             [UIImage imageNamed:@"cross2@1x.png"],
                             [UIImage imageNamed:@"cross3@1x.png"],
                             [UIImage imageNamed:@"cross4@1x.png"],
                             [UIImage imageNamed:@"cross5@1x.png"],
                             [UIImage imageNamed:@"cross6@1x.png"],
                             [UIImage imageNamed:@"cross7@1x.png"],
                             [UIImage imageNamed:@"cross8@1x.png"],nil];
    [image9 setAnimationRepeatCount:1];
    image9.animationDuration= 1.0;
    
    image9.contentMode =UIViewAutoresizingFlexibleWidth;
    [image9 startAnimating];
    [self.view addSubview:image9];
    [self.view bringSubviewToFront:image9];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb9=CGRectMake(0, 680, 1024, 90);
    lable3.frame=lb9;
    [lable3 setTitle:@"and to get to Heaven we must have a perfect record," forState:UIControlStateNormal];
    lable3.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable3.titleLabel.numberOfLines=4;
    lable3.titleLabel.lineBreakMode=YES;
    lable3.backgroundColor=[UIColor blackColor];
    [lable3 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable3.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable3];
    
    
    text=[[UIButton alloc]init];
    text.frame=CGRectMake(900,650 ,100, 100);
    text.backgroundColor=[UIColor clearColor];
    [text setImage:[UIImage imageNamed:@"texticon@1x.png"] forState:UIControlStateNormal];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;
    
    lable3.hidden=NO;
    newval1=1;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    NSString *str=[perf objectForKey:@"lableoff"]; 
    if([str isEqualToString:@"1"])
    {
        lable3.hidden=YES;
        text.hidden=NO;
    }else
    {
        lable3.hidden=NO;
        text.hidden=YES;
    }
    
}
-(void)labelTap
{
    lable3.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
    
}
-(void)showlable
{
    lable3.hidden=NO;
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
    Extra1 *backview=[[Extra1 alloc]initWithNibName:@"Extra1" bundle:nil];
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
