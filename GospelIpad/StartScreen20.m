//
//  StartScreen20.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen20.h"
#import "GoodNewsScreen.h"
#import "GospelIpadViewController.h"
#import "StartScreen11.h"
@implementation StartScreen20
@synthesize image2,image3,image4,image7,image8,image6,lable,image,image1,text;
@synthesize back;
int value20=1;
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
    
    lb2=CGRectMake(130,250, 800,140);
    image=[[UIImageView alloc]initWithFrame:lb2];
    [image setImage:[UIImage imageNamed:@"basphemers@1x.png"]];
    [self.view addSubview:image];
    
    lb12=CGRectMake(0, 680, 1024, 90);
    lable.frame=lb12;
    lable.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable.titleLabel.numberOfLines=2;
    lable.titleLabel.lineBreakMode=YES;
    [lable setTitle:@"This is called BLASPHEMY." forState:UIControlStateNormal];
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
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
    switch (value20)
    {
        case 1:[self callgiltyanimation];
            value20=2;
            break;
        case 2: image.hidden=YES;
            image1.hidden=YES;
            
            lb7=CGRectMake(400, 100, 208, 68);
            image2=[[UIImageView alloc]initWithFrame:lb7];
            [image2 setImage:[UIImage imageNamed:@"liers_small@1x.png"]];
            [self.view addSubview:image2];
            lb10=CGRectMake(370, 40, 262, 188);
            image6=[[UIImageView alloc]initWithFrame:lb10];
            [image6 setImage:[UIImage imageNamed:@"guilty_small@1x.png"]];
            [self.view addSubview:image6];
            NSUserDefaults *perf1=[NSUserDefaults standardUserDefaults];
            NSString *str=[perf1 objectForKey:@"stolen"];
            if([str isEqualToString:@"1"])
            {
                
                lb8=CGRectMake(360, 300, 288, 68);
                image3=[[UIImageView alloc]initWithFrame:lb8];
                [image3 setImage:[UIImage imageNamed:@"thieves_small@1x.png"]];
                [self.view addSubview:image3];
                
                lb11=CGRectMake(370,220, 262, 188);
                image7=[[UIImageView alloc]initWithFrame:lb11];
                [image7 setImage:[UIImage imageNamed:@"guilty_small@1x.png"]];
                [self.view addSubview:image7];
            }
            if([str isEqualToString:@"1"])
            {
                
                lb9=CGRectMake(240, 450,541,72);
                image4=[[UIImageView alloc]initWithFrame:lb9];
                [image4 setImage:[UIImage imageNamed:@"blasphemer_gray@1x.png"]];
                [self.view addSubview:image4];
                
                lb12=CGRectMake(370, 400, 262,188);
                image8=[[UIImageView alloc]initWithFrame:lb12];
                [image8 setImage:[UIImage imageNamed:@"guilty_small@1x.png"]];
                [self.view addSubview:image8];
        [lable setTitle:@"So by God's Standards we are liars, thieves, blasphemers ..."                                             forState:UIControlStateNormal];
            }else
            {
                lb9=CGRectMake(240, 320,541,72);
                image4=[[UIImageView alloc]initWithFrame:lb9];
                [image4 setImage:[UIImage imageNamed:@"blasphemer_gray@1x.png"]];
                [self.view addSubview:image4];
                
                lb12=CGRectMake(370, 260, 262, 188);
                image8=[[UIImageView alloc]initWithFrame:lb12];
                [image8 setImage:[UIImage imageNamed:@"guilty_small@1x.png"]];
                [self.view addSubview:image8];
                
                [lable setTitle:@"So by God's Standards we are liars, blasphemers ..."                                 forState:UIControlStateNormal];
                
            }
            value20=3;
            break; 
        case 3:
            [lable setTitle:@"Obviously we shouldn't be allowed into a perfect Heaven;              we deserve punishment in Hell. That's the bad news." forState:UIControlStateNormal];
            
            value20=4;
            break;
        case 4: image.hidden=YES;
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            [lable setTitle:@"This is called Blasphemer" forState:UIControlStateNormal];
            NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
            [perf setObject:@"1" forKey:@"next"];
            
            tab1=[[GoodNewsScreen alloc]initWithNibName:@"GoodNewsScreen" bundle:[NSBundle mainBundle]];           
            [self.navigationController pushViewController:tab1 animated:NO];
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
    image1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guilty8@1x.png"]];
    lb3=CGRectMake(-50, -150, 1024, 768);
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
-(IBAction)gobackview:(id)sender
{
    StartScreen11 *backview=[[StartScreen11 alloc]initWithNibName:@"StartScreen11" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image.hidden=NO;
    
    value20=1;    
    
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
