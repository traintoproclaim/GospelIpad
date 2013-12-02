//
//  Extra2.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Extra2.h"
#import "GospelIpadViewController.h"
#import "newView1.h"

@implementation Extra2
@synthesize lable1,image,lable2,image1,lable3,image2,image3,image4,image5,image6,image9,image7,image8,image10,image11;
@synthesize lable5,lable4,back,image12,text;
int ex2=1;

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

}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb9=CGRectMake(0, 680, 1024, 90);
    lable3.frame=lb9;
    [lable3 setTitle:@"then logically it would seem we are " forState:UIControlStateNormal];
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
    ex2=1;
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
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (ex2)
    {
            
        case 1:
            lb10=CGRectMake(550, 250, 269, 71);
            image7=[[UIImageView alloc]initWithFrame:lb10];
            [image7 setImage:[UIImage imageNamed:@"all_of_us@1x.png"]];
            [self.view addSubview:image7];
            [lable3 setTitle:@"all headed for ... {HELL}." forState:UIControlStateNormal];
            ex2=2;
            break;
        case 2: 
            lb11=CGRectMake(550,350, 269,192);
            image8=[[UIImageView alloc]initWithFrame:lb11];
            [image8 setImage:[UIImage imageNamed:@"hell_arrow@1x.png"]];
            [self.view addSubview:image8];
            
            /*lb13=CGRectMake(280,160, 126,88);
            image12=[[UIImageView alloc]initWithFrame:lb13];
            [image12 setImage:[UIImage imageNamed:@"hell-text@1x.png"]];
            [self.view addSubview:image12];*/
            [lable3 setTitle:@"You may be thinking. \"This doesn't sound right,\"" forState:UIControlStateNormal];
            ex2=3;
            break;
        case 3:
            lable2.hidden=YES;
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
            
            
            tab1=[[StartScreen3 alloc]initWithNibName:@"StartScreen3" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
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

-(IBAction)gobackview:(id)sender
{
    newView1 *backview=[[newView1 alloc]initWithNibName:@"newView1" bundle:nil];
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
