//
//  newView4.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "newView4.h"
#import "GospelIpadViewController.h"
#import "newView3.h"

@implementation newView4

@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image17,image18,name,image19,image20,image21,image22,image23;
@synthesize image10,image11,image12,image24,image25;
@synthesize lable1,lable2,lable3,back,gender;
@synthesize lable4,lable5,lable6,lable7,lable8,text;
int newval3=1;


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
    
    lb2=CGRectMake(-135, 0, 1280,800);
    image1=[[UIImageView alloc]initWithFrame:lb2];
    [image1 setImage:[UIImage imageNamed:@"jesus24@1x.png"]];
    [self.view addSubview:image1];
    lb5=CGRectMake(420, 50,190,271);
    image4=[[UIImageView alloc]initWithFrame:lb5];
    [image4 setImage:[UIImage imageNamed:@"cross_grey@1x.png"]];
    [self.view addSubview:image4];
    

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (newval3)
    {
        case 1:[lable1 setTitle:@"So Jesus died" forState:UIControlStateNormal];
            newval3=2;
            break;
        case 2:image4.hidden=YES;
            lb7=CGRectMake(380,50,279,360);
            image6=[[UIImageView alloc]initWithFrame:lb7];
            [image6 setImage:[UIImage imageNamed:@"jesus_white_icon1@1x.png"]];
            [self.view addSubview:image6];
            [lable1 setTitle:@"and also rose from the dead," forState:UIControlStateNormal];
            newval3=3;
            break;
        case 3:image6.hidden=YES;
            [self calljesusanimation];
            [lable1 setTitle:@"proving He is God." forState:UIControlStateNormal];
            newval3=4;
            break;
        case 4:image4.hidden=YES;
            image19.hidden=YES;
            image9.hidden=YES;
            image2.hidden=YES;
            [self simplehearanimation];
            image1.hidden=YES;
           
            [lable1 setTitle:@"       Out of His amazing love for us, Jesus did something that          we could never do for ourselves." forState:UIControlStateNormal];
            newval3=5;
            break;
        case 5:image.hidden=YES;
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
            image13.hidden=YES;
            image14.hidden=YES;
            image15.hidden=YES;
            image16.hidden=YES;
            image17.hidden=YES;
            image18.hidden=YES;
            image19.hidden=YES;
            image20.hidden=YES;
            image21.hidden=YES;
            image22.hidden=YES;
            image23.hidden=YES;
            image24.hidden=YES;
            image25.hidden=YES;
            lable2.hidden=YES;
            lable3.hidden=YES;
            lable4.hidden=YES;
            lable5.hidden=YES;
            lable6.hidden=YES;
            lable7.hidden=YES;
            image15.hidden=YES;
            image16.hidden=YES;
            lable8.hidden=YES;
            lable1.titleLabel.text=nil;
            
            tab1=[[Extra5 alloc]initWithNibName:@"Extra5" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
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
    newView3 *backview=[[newView3 alloc]initWithNibName:@"newView3" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)simplehearanimation
{
    
    image20=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"heart_zoom8@1x.png"]];
    lb23=CGRectMake(260, 50,480,457);
    image20.frame=lb23;
    image20.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"heart_zoom1@1x.png"],
                              [UIImage imageNamed:@"heart_zoom2@1x.png"],
                              [UIImage imageNamed:@"heart_zoom3@1x.png"],
                              [UIImage imageNamed:@"heart_zoom4@1x.png"],
                              [UIImage imageNamed:@"heart_zoom5@1x.png"],
                              [UIImage imageNamed:@"heart_zoom6@1x.png"],
                              [UIImage imageNamed:@"heart_zoom7@1x.png"],
                              [UIImage imageNamed:@"heart_zoom8@1x.png"],
                              nil];
    [image20 setAnimationRepeatCount:1];
    image20.animationDuration=0.40;
    
    image20.contentMode =UIViewAutoresizingFlexibleWidth;
    [image20 startAnimating];
    [self.view addSubview:image20];
    [self.view bringSubviewToFront:image20];
}

-(void)calljesusanimation
{
    image19=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"jesus_white_icon9@1x.png"]];
    lb22=CGRectMake(380,0,279,360);
    image19.frame=lb22;
    image19.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"jesus_white_icon1@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon2@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon3@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon4@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon5@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon6@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon7@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon8@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon9@1x.png"],
                              nil];
    [image19 setAnimationRepeatCount:1];
    image19.animationDuration= 0.90;
    
    image19.contentMode =UIViewAutoresizingFlexibleWidth;
    [image19 startAnimating];
    [self.view addSubview:image19];
    [self.view bringSubviewToFront:image19];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb1=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=3;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"And He did!" forState:UIControlStateNormal];
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
    
    
    image1.hidden=NO;
    image4.hidden=NO;
    newval3=1;  
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
