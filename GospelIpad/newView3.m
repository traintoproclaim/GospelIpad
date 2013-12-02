//
//  newView3.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "newView3.h"
#import "GospelIpadViewController.h"
#import "StartScreen13.h"


@implementation newView3

@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image17,image18,name,image19,image20,image21,image22,image23;
@synthesize image10,image11,image12,image24,image25;
@synthesize lable1,lable2,lable3,back,gender;
@synthesize lable4,lable5,lable6,lable7,lable8,text;
int newval2=1;

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
    [image1 setImage:[UIImage imageNamed:@"jesus0@1x.png"]];
    [self.view addSubview:image1];

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (newval2)
    {
        case 1:[lable1 setTitle:@"I'll send Jesus to earth," forState:UIControlStateNormal];
            
            image1.hidden=YES;
            [self calljesuszoomanimation];
            newval2=2;
            break;
        case 2:image2.hidden=YES;
            image1.hidden=YES;
            
            [lable1 setTitle:@"as a human being," forState:UIControlStateNormal];
            [self calljesuszoomoutanimation];
            newval2=3;
            break;
        case 3:image3.hidden=YES;
            lb6=CGRectMake(420, 50,190,271);
            image5=[[UIImageView alloc]initWithFrame:lb6];
            [image5 setImage:[UIImage imageNamed:@"perfect_record@1x.png"]];
            [self.view addSubview:image5];
            [lable1 setTitle:@"to live a perfect life" forState:UIControlStateNormal];
            newval2=4;
            break;
        case 4:image5.hidden=YES;
            
             lb5=CGRectMake(420, 50,190,271);
            image4=[[UIImageView alloc]initWithFrame:lb5];
            [image4 setImage:[UIImage imageNamed:@"cross_grey@1x.png"]];
            [self.view addSubview:image4];
            image2.hidden=YES;
            
             
            image2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"jesus24@1x.png"]];  
            image2.frame=CGRectMake(-135, 0, 1280,800);
            [self.view addSubview:image2];
            
            
            NSUserDefaults *gd = [NSUserDefaults standardUserDefaults];
            gnder1=[gd integerForKey:@"gender"];
            if(gnder1==0)
            {
[lable1 setTitle:@"        and to die a cruel, painful death on a cross to take his         punishment for him." forState:UIControlStateNormal];
                
            }
            if(gnder1==1)
            {
[lable1 setTitle:@"        and to die a cruel, painful death on a cross to take her         punishment for her." forState:UIControlStateNormal];
                
            }
            if(gnder1==2)
            {
[lable1 setTitle:@"      and to die a cruel, painful death on a cross to take their             punishment for them." forState:UIControlStateNormal];
                
            }
            
            
            newval2=5;
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
            
            tab1=[[newView4 alloc]initWithNibName:@"newView4" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
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
    StartScreen13 *backview=[[StartScreen13 alloc]initWithNibName:@"StartScreen13" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}

-(void)calljesuszoomoutanimation
{
    image2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"jesus23@1x.png"]];
    lb3=CGRectMake(-135, 0, 1280,800);
    image2.frame=lb3;
    image2.animationImages =[NSArray arrayWithObjects:
                             
                             [UIImage imageNamed:@"jesus15@1x.png"],
                             [UIImage imageNamed:@"jesus16@1x.png"],
                             [UIImage imageNamed:@"jesus17@1x.png"],
                             [UIImage imageNamed:@"jesus18@1x.png"],
                             [UIImage imageNamed:@"jesus19@1x.png"],
                             [UIImage imageNamed:@"jesus20@1x.png"],
                             [UIImage imageNamed:@"jesus21@1x.png"],
                             [UIImage imageNamed:@"jesus23@1x.png"],
                             //[UIImage imageNamed:@"jesus24@1x.png"],
                        
                             
                             
                             
                             
                             
                             nil];
    [image2 setAnimationRepeatCount:1];
    image2.animationDuration= 1.00;
    
    image2.contentMode =UIViewAutoresizingFlexibleWidth;
    [image2 startAnimating];
    [self.view addSubview:image2];
    [self.view bringSubviewToFront:image2];
}
-(void)calljesuszoomanimation
{
    image2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"jesus14@1x.png"]];
    lb3=CGRectMake(-135, 0, 1280,800);
    image2.frame=lb3;
    image2.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"jesus0@1x.png"],
                             [UIImage imageNamed:@"jesus1@1x.png"],
                             [UIImage imageNamed:@"jesus2@1x.png"],
                             [UIImage imageNamed:@"jesus3@1x.png"],
                             [UIImage imageNamed:@"jesus4@1x.png"],
                             [UIImage imageNamed:@"jesus5@1x.png"],
                             [UIImage imageNamed:@"jesus6@1x.png"],
                             [UIImage imageNamed:@"jesus7@1x.png"],
                             [UIImage imageNamed:@"jesus8@1x.png"],
                             [UIImage imageNamed:@"jesus9@1x.png"],
                             [UIImage imageNamed:@"jesus10@1x.png"],
                             [UIImage imageNamed:@"jesus11@1x.png"],
                             [UIImage imageNamed:@"jesus12@1x.png"],
                             [UIImage imageNamed:@"jesus13@1x.png"],
                             [UIImage imageNamed:@"jesus14@1x.png"],


                             
                             nil];
    [image2 setAnimationRepeatCount:1];
    image2.animationDuration= 1.20;
    
    image2.contentMode =UIViewAutoresizingFlexibleWidth;
    [image2 startAnimating];
    [self.view addSubview:image2];
    [self.view bringSubviewToFront:image2];
}
-(void)callcrossimage
{
    image14=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"c8@1x.png"]];
    lb15=CGRectMake(190, 140, 97, 97);
    image14.frame=lb15;
    image14.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"c1@1x.png"],
                              [UIImage imageNamed:@"c2@1x.png"],
                              [UIImage imageNamed:@"c3@1x.png"],
                              [UIImage imageNamed:@"c4@1x.png"],
                              [UIImage imageNamed:@"c5@1x.png"],
                              [UIImage imageNamed:@"c6@1x.png"],
                              [UIImage imageNamed:@"c7@1x.png"],
                              [UIImage imageNamed:@"c8@1x.png"],nil];
    [image14 setAnimationRepeatCount:1];
    image14.animationDuration=1.0;
    
    image14.contentMode =UIViewAutoresizingFlexibleWidth;
    [image14 startAnimating];
    [self.view addSubview:image14];
    [self.view bringSubviewToFront:image14];
}
-(void)callsoultransferimages
{
    image9=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Soul-transfer6@1x.png"]];
    lb10=CGRectMake(60,80,377,182);
    image9.frame=lb10;
    image9.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"Soul-transfer@1x.png"],
                             [UIImage imageNamed:@"Soul-transfer2@1x.png"],
                             [UIImage imageNamed:@"Soul-transfer3@1x.png"],
                             [UIImage imageNamed:@"Soul-transfer4@1x.png"],
                             [UIImage imageNamed:@"Soul-transfer5@1x.png"],
                             [UIImage imageNamed:@"Soul-transfer6@1x.png"],nil];
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
    lb1=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=3;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"So I have a plan!" forState:UIControlStateNormal];
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
    newval2=1;  
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
