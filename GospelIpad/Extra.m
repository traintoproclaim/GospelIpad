//
//  Extra.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Extra.h"
#import "StartPresentationView.h"
#import "StartScreen1.h"
#import "GospelIpadViewController.h"

@implementation Extra
@synthesize back,image1,image2,image,image3,image4,lable1,text;
int ex=1;
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
    lb1=CGRectMake(410, 10, 164,175);
    image=[[UIImageView alloc]initWithFrame:lb1];
    [image setImage:[UIImage imageNamed:@"page_2_icon@1x.png"]];
    [self.view addSubview:image];

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (ex)
    {
            
        case 1:
            lb2=CGRectMake(380, 220, 227, 69);
            image1=[[UIImageView alloc]initWithFrame:lb2];
            [image1 setImage:[UIImage imageNamed:@"page_2_link@1x.png"]];
            [self.view addSubview:image1];
            lb3=CGRectMake(290, 300, 164, 175);
            image2=[[UIImageView alloc]initWithFrame:lb3];
            [image2 setImage:[UIImage imageNamed:@"page_2_icon@1x.png"]];
            [self.view addSubview:image2];
            lb4=CGRectMake(540, 300, 164, 175);
            image3=[[UIImageView alloc]initWithFrame:lb4];
            [image3 setImage:[UIImage imageNamed:@"page_2_icon@1x.png"]];
            [self.view addSubview:image3];
            lb5=CGRectMake(310, 530, 310, 50);
            image4=[[UIImageView alloc]initWithFrame:lb5];
            [image4 setImage:[UIImage imageNamed:@"page_2_perfect@1x.png"]];
            [self.view addSubview:image4];
            [lable1 setTitle:@"made people perfect to have a friendship with Him." forState:UIControlStateNormal];
            ex=2;
            break;
        case 2:
            image.hidden=YES;
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            StartScreen1 *tab1=[[StartScreen1 alloc]initWithNibName:@"StartScreen1" bundle:[NSBundle mainBundle]];            
            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];
            break;
            
    }
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb10=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb10;
    [lable1 setTitle:@"In the beginning, God" forState:UIControlStateNormal];
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    lable1.backgroundColor=[UIColor blackColor];
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
    
    
    image.hidden=NO;
    ex=1;
    
}
-(void)labelTap
{
    lable1.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
    
}
-(void)showlable;
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
    StartPresentationView *Controller=[[StartPresentationView alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
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
