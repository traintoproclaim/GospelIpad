//
//  Extra6.m
//  GospelIpad
//
//  Created by vibha on 5/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Extra6.h"
#import "Extra6.h"
#import "Extra7.h"
#import "Extra5.h"
#import "GospelIpadViewController.h"


@implementation Extra6

@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image17,image18,name,image19,image20,image21,image22,image23,text;
@synthesize image10,image11,image12,image24,image25;
@synthesize lable1,lable2,lable3,back,gender;
@synthesize lable4,lable5,lable6,lable7,lable8;
int ex6=1;
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
    
    lb11=CGRectMake(140, 550,767,51);
    image10=[[UIImageView alloc]initWithFrame:lb11];
    [image10 setImage:[UIImage imageNamed:@"three_major_events@1x.png"]];
    [self.view addSubview:image10];

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (ex6)
    {
        case 1:
         
             lb12=CGRectMake(130,40, 800,233);
            image11=[[UIImageView alloc]initWithFrame:lb12];
            [image11 setImage:[UIImage imageNamed:@"event_birth@1x.png"]];
            [self.view addSubview:image11];
            [lable1 setTitle:@"between birth" forState:UIControlStateNormal];
            
            ex6=2;
            break;
        case 2:[image11 setImage:[UIImage imageNamed:@"event_death@1x.png"]];
            [lable1 setTitle:@"and death," forState:UIControlStateNormal];
            ex6=3;
            break;
        case 3:
            [image11 setImage:[UIImage imageNamed:@"event_forgiven_1@1x.png"]];
            [lable1 setTitle:@"when we are completely FORGIVEN for breaking God's laws." forState:UIControlStateNormal]; 
            ex6=4;
            break;
        case 4:
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
            
            tab1=[[newView5 alloc]initWithNibName:@"newView5" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
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
    image9=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"soul_transfer_small9@1x.png"]];
    lb10=CGRectMake(60,250,219,368);
    image9.frame=lb10;
    image9.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"soul_transfer_small1@1x.png"],
                             [UIImage imageNamed:@"soul_transfer_small2@1x.png"],
                             [UIImage imageNamed:@"soul_transfer_small3@1x.png"],
                             [UIImage imageNamed:@"soul_transfer_small4@1x.png"],
                             [UIImage imageNamed:@"soul_transfer_small5@1x.png"],
                             [UIImage imageNamed:@"soul_transfer_small6@1x.png"],
                             [UIImage imageNamed:@"soul_transfer_small7@1x.png"],
                             [UIImage imageNamed:@"soul_transfer_small8@1x.png"],
                             [UIImage imageNamed:@"soul_transfer_small9@1x.png"],nil];
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
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"Well, according to the Bible, there is supposed to be a major event" forState:UIControlStateNormal];
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
    image10.hidden=NO;
    ex6=1; 
    
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
-(IBAction)gobackview:(id)sender
{
    Extra5 *backview=[[Extra5 alloc]initWithNibName:@"Extra5" bundle:nil];
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
