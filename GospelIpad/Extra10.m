//
//  Extra10.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Extra10.h"
#import "GospelIpadViewController.h"
#import "Extra8.h"


@implementation Extra10
@synthesize back,lable1,lable2,lable3,image7,image8,image9,image17,image18,image14,image;
@synthesize customView,text;
int ex10=1;
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
    [lable1 setTitle:@"if you were to die right now, where would you go?" forState:UIControlStateNormal];
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
    
    
    lb11=CGRectMake(20,70,230,542);
    image7=[[UIImageView alloc]initWithFrame:lb11];
    [image7 setImage:[UIImage imageNamed:@"if_you_died_text@1x.png"]];
    [self.view addSubview:image7];
    
    lb12=CGRectMake(250, 70, 430,410);
    image8=[[UIImageView alloc]initWithFrame:lb12];
    [image8 setImage:[UIImage imageNamed:@"body_with_soul@1x.png"]];
    [self.view addSubview:image8];
    
    lb13=CGRectMake(660,200, 227,330);
    image9=[[UIImageView alloc]initWithFrame:lb13];
    [image9 setImage:[UIImage imageNamed:@"page-38-heaven-or-hell@1x.png"]];
    [self.view addSubview:image9];
    
    
    lb18=CGRectMake(920,170, 85,123);
    image17=[[UIImageView alloc]initWithFrame:lb18];
    [image17 setImage:[UIImage imageNamed:@"question_mark_small@1x.png"]];
    [self.view addSubview:image17];
    
    lb19=CGRectMake(920,450, 85,123);
    image18=[[UIImageView alloc]initWithFrame:lb19];
    [image18 setImage:[UIImage imageNamed:@"question_mark_small@1x.png"]];
    [self.view addSubview:image18];
    
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
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{ 
    
    switch (ex10)
    {
            
        case 1:image9.hidden=YES;
            image17.hidden=YES;
            image18.hidden=YES;
            lable3.hidden=YES;
            lable2.hidden=YES;
            [self myview];
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
-(void)myview
{
    image7.hidden=NO;
    image8.hidden=NO;
    lable2.hidden=YES;
    [lable1 setTitle:@"if you were to die right now, where would you go?" forState:UIControlStateNormal];
    customView.hidden=YES;
    
    customView=[UIView new];
    customView.frame=CGRectMake(690, 70, 300, 450);
    customView.backgroundColor=[UIColor grayColor];
    customView.layer.cornerRadius=5.3;
    customView.layer.masksToBounds=YES;
    customView.layer.borderColor=[UIColor blackColor].CGColor;
    customView.layer.borderWidth=2;
    customView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3/1.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(bounce1AnimationStopped)];
    customView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    [UIView commitAnimations];
    
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame=CGRectMake(-30, 50, 200, 41);
    [btn1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateHighlighted];
    [btn1 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateSelected];
    [btn1 addTarget:self action:@selector(actionforheaven:) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn1];
    
    UILabel *lbb1=[[UILabel alloc]init];
    lbb1.frame=CGRectMake(100, 50, 200, 40);
    lbb1.text=@"Heaven";
    lbb1.font= [UIFont fontWithName:@"Opificio" size:34.f];
    
    lbb1.textColor=[UIColor whiteColor];
    lbb1.backgroundColor=[UIColor clearColor];
    [customView addSubview:lbb1];
    
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame=CGRectMake(-30, 150, 200, 41);
    [btn2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateHighlighted];
    [btn2 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateSelected];
    [btn2 addTarget:self action:@selector(actionforhell:) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn2];
    
    UILabel *lbb2=[[UILabel alloc]init];
    lbb2.frame=CGRectMake(100, 150, 200, 40);
    lbb2.text=@"Hell";
    lbb2.font= [UIFont fontWithName:@"Opificio" size:34.f];
    
    lbb2.textColor=[UIColor whiteColor];
    lbb2.backgroundColor=[UIColor clearColor];
    [customView addSubview:lbb2];
    
    UIButton *btn3=[UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame=CGRectMake(-30, 250, 200, 41);
    [btn3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateHighlighted];
    [btn3 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateSelected];
    [btn3 addTarget:self action:@selector(actionforheaven:) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn3];
    
    UILabel *lbb3=[[UILabel alloc]init];
    lbb3.frame=CGRectMake(100, 250, 150, 40);
    lbb3.text=@"Not sure";
    lbb3.font= [UIFont fontWithName:@"Opificio" size:34.f];
    
    lbb3.textColor=[UIColor whiteColor];
    lbb3.backgroundColor=[UIColor clearColor];
    [customView addSubview:lbb3];
    
    UIButton *btn4=[UIButton buttonWithType:UIButtonTypeCustom];
    btn4.frame=CGRectMake(-30, 350, 200, 41);
    [btn4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [btn4 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateHighlighted];
    [btn4 setImage:[UIImage imageNamed:@"check@1x.png"] forState:UIControlStateSelected];
    [btn4 addTarget:self action:@selector(actionforother:) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn4];
    
    UILabel *lbb4=[[UILabel alloc]init];
    lbb4.frame=CGRectMake(100, 350, 200, 40);
    lbb4.text=@"Other";
    lbb4.font= [UIFont fontWithName:@"Opificio" size:34.f];
    
    lbb4.textColor=[UIColor whiteColor];
    lbb4.backgroundColor=[UIColor clearColor];
    [customView addSubview:lbb4];
    [self.view addSubview:customView];
}
- (void)bounce1AnimationStopped {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3/2];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(bounce2AnimationStopped)];
    customView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
    [UIView commitAnimations];
}

- (void)bounce2AnimationStopped {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3/2];
    customView.transform = CGAffineTransformIdentity;
    [UIView commitAnimations];
}
-(IBAction)actionforheaven:(id)sender
{ NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:0 forKey:@"hell"];
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"otherback"];
    
    image.hidden=YES;
    image7.hidden=YES;
    image8.hidden=YES;
    image9.hidden=YES;
    
    image14.hidden=YES;
    
    image17.hidden=YES;
    image18.hidden=YES;
    
    
    [lable1 setTitle:@"If you did have this event sometime in your life, then you are forgiven," forState:UIControlStateNormal];
    
    customView.hidden=YES;
    
    tab1=[[HeavenAction alloc]initWithNibName:@"HeavenAction" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
}
-(IBAction)actionfornotsure:(id)sender
{
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"otherback"];
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:0 forKey:@"hell"];
    
    image.hidden=YES;
    
    image7.hidden=YES;
    image8.hidden=YES;
    image9.hidden=YES;
    
    image14.hidden=YES;
    
    image17.hidden=YES;
    image18.hidden=YES;
    [lable1 setTitle:@"If you did have this event sometime in your life, then you are forgiven," forState:UIControlStateNormal];    customView.hidden=YES;
    tab1=[[HeavenAction alloc]initWithNibName:@"HeavenAction" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab2 animated:NO];
    [tab2 release];
    
    
}
-(IBAction)actionforhell:(id)sender
{
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"otherback"];
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:1 forKey:@"hell"];
    
    image.hidden=YES;
    image7.hidden=YES;
    image8.hidden=YES;
    image9.hidden=YES;
    
    image14.hidden=YES;
    
    image17.hidden=YES;
    image18.hidden=YES;
    [lable1 setTitle:@"If you did have this event sometime in your life, then you are forgiven," forState:UIControlStateNormal];
    customView.hidden=YES;
    tab2=[[HellAction alloc]initWithNibName:@"HellAction" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab2 animated:NO];
    [tab2 release];
    
}
-(IBAction)actionforother:(id)sender
{
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:0 forKey:@"hell"];
    image7.hidden=YES;
    image8.hidden=YES;
    image9.hidden=YES;
    image17.hidden=YES;
    image18.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"otherback"];
    
    customView.hidden=YES;
    
    lb3=CGRectMake(0, 200, 1024, 150);
    
    lable2=[[UILabel alloc]initWithFrame:lb3];
    lable2.text=@"I respect you believe something different, but IF this is true, where would you go?";
    lable2.font= [UIFont fontWithName:@"Opificio" size:40.f];
    lable2.textAlignment=UITextAlignmentCenter;
    lable2.textColor=[UIColor grayColor];
    lable2.lineBreakMode=UILineBreakModeWordWrap;
    lable2.numberOfLines=3;
    lable2.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable2];
    
    
    lable1.frame=lb1;
    [lable1 setTitle:@"    I respect you believe something different, but IF this is               true, where would you go?" forState:UIControlStateNormal];
}



-(IBAction)gobackview:(id)sender
{
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    NSString *str= [perf objectForKey:@"otherback"];
    if([str isEqualToString:@"1"])
    {
        Extra10 *backview=[[Extra10 alloc]initWithNibName:@"Extra10" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    }else
    {
        Extra8 *backview=[[Extra8 alloc]initWithNibName:@"Extra8" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    }
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image8.hidden=NO;
    image7.hidden=NO;
    image9.hidden=NO;
    image17.hidden=NO;
    image18.hidden=NO;
    ex10=1;    
    
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
