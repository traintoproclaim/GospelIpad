//
//  Extra9.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Extra9.h"
#import "GospelIpadViewController.h"
#import "StartScreen15.h"
#import "StartScreen16.h"
@implementation Extra9

@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8;
@synthesize lable1,lable2,back,text;
int ex9=1;

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
    lb6=CGRectMake(280, 210,502,146);
    image4=[[UIImageView alloc]initWithFrame:lb6];
    [image4 setImage:[UIImage imageNamed:@"heaven_large@1x.png"]];
    [self.view addSubview:image4]; 

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (ex9)
    {
        case 1:
            [self callcrossimage];
            [lable1 setTitle:@"it is literally impossible to get into Heaven. " forState:UIControlStateNormal]; 
            ex9=2;
            break;
        case 2:[self callbloodanimation];
            
            [lable1 setTitle:@"According to the Bible, where is the only other place you can go? {Hell}." forState:UIControlStateNormal]; 
            
            ex9=3;
            break;
            
        case 3:
        [lable1 setTitle:@"   God doesn’t want you or anyone to end up in Hell and             there is no reason why anyone needs to." forState:UIControlStateNormal]; 
            
            ex9=4;
            break;
            
        case 4:image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            lable2.hidden=YES;
            lable1.titleLabel.text=nil;
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"0" forKey:@"back"];
            tab1=[[StartScreen16 alloc]initWithNibName:@"StartScreen16" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];
            break;
    }
}
-(void)callcrossimage
{
    image5=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"close10@1x.png"]];
    lb9=CGRectMake(280, 100, 500,508);
    image5.frame=lb9;
    image5.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"close1@1x.png"],
                             [UIImage imageNamed:@"close2@1x.png"],
                             [UIImage imageNamed:@"close3@1x.png"],
                             [UIImage imageNamed:@"close4@1x.png"],
                             [UIImage imageNamed:@"close5@1x.png"],
                             [UIImage imageNamed:@"close6@1x.png"],
                             [UIImage imageNamed:@"close7@1x.png"],
                             [UIImage imageNamed:@"close8@1x.png"],
                             [UIImage imageNamed:@"close9@1x.png"],
                             [UIImage imageNamed:@"close10@1x.png"],nil];
    [image5 setAnimationRepeatCount:1];
    image5.animationDuration= 1.0;
    
    image5.contentMode =UIViewAutoresizingFlexibleWidth;
    [image5 startAnimating];
    [self.view addSubview:image5];
    [self.view bringSubviewToFront:image5];
}
-(void)callbloodanimation
{
    image6=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"close14@1x.png"]];
    lb9=CGRectMake(280, 100, 500,508);
    image6.frame=lb9;
    image6.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"close11@1x.png"],
                             [UIImage imageNamed:@"close12@1x.png"],
                             [UIImage imageNamed:@"close13@1x.png"],
                             [UIImage imageNamed:@"close14@1x.png"],
                             nil];
    [image6 setAnimationRepeatCount:1];
    image6.animationDuration= 1.0;
    
    image6.contentMode =UIViewAutoresizingFlexibleWidth;
    [image6 startAnimating];
    [self.view addSubview:image6];
    [self.view bringSubviewToFront:image6];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lable1.hidden=NO;
    lable2.hidden=NO;
    image1.hidden=NO;
    lb1=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"If you have not turned and surrendered," forState:UIControlStateNormal];
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
    ex9=1;
    
    
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
    StartScreen15 *backview=[[StartScreen15 alloc]initWithNibName:@"StartScreen15" bundle:nil];
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
