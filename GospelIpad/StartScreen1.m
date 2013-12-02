//
//  StartScreen1.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StartScreen1.h"
#import "GospelIpadViewController.h"
#import "Extra.h"
#import "StartScreen2.h"
#import "newView.h"



int value1=1;
@implementation StartScreen1
@synthesize image,image1,lable1,image2,image3,image10,image11;
@synthesize image4,image5,image6,image7,image8,lable2,lable3,lable4,image12,image9,image13,text;
@synthesize lable5,back;

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
    lb6=CGRectMake(80, 70, 430,410);
    image5=[[UIImageView alloc]initWithFrame:lb6];
    [image5 setImage:[UIImage imageNamed:@"body@1x.png"]];
    [self.view addSubview:image5];
    
    lb7=CGRectMake(160, 510, 269, 71);
    image6=[[UIImageView alloc]initWithFrame:lb7];
    image6.backgroundColor=[UIColor clearColor];
    [image6 setImage:[UIImage imageNamed:@"all_of_us@1x.png"]];
    [self.view addSubview:image6];                

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
    switch (value1)
    {
            
        case 1:
            
            lb10=CGRectMake(155, 80, 277, 374);
            image10=[[UIImageView alloc]initWithFrame:lb10];
            [image10 setImage:[UIImage imageNamed:@"soul@1x.png"]];
            [self.view addSubview:image10];
            [lable1 setTitle:@"and a soul and at death your body is either buried"forState:UIControlStateNormal];
            
            value1=2;
            break;
        case 2:image13.hidden=YES;
            image5.hidden=YES;
            image10.hidden=YES;
            image6.hidden=YES;
            [self callbodyimages];
            
            lb10=CGRectMake(155, 80, 277, 374);
            image10=[[UIImageView alloc]initWithFrame:lb10];
            [image10 setImage:[UIImage imageNamed:@"soul@1x.png"]];
            [self.view addSubview:image10];
            
            lb7=CGRectMake(160, 510, 269, 71);
            image6=[[UIImageView alloc]initWithFrame:lb7];
            image6.backgroundColor=[UIColor clearColor];
            [image6 setImage:[UIImage imageNamed:@"all_of_us@1x.png"]];
            [self.view addSubview:image6];
            [lable1 setTitle:@"or cremated."forState:UIControlStateNormal];
            
            value1=3;
            break;
            
        case 3:image10.hidden=NO;
            
            image9=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"circle_blank9@1x.png"]];
            [self callcircleimage];
            [lable1 setTitle:@"But your soul, the real you, " forState:UIControlStateNormal];
            
            value1=4;
            break;
            
            
        case 4:
            image5.hidden=YES;
            image6.hidden=NO;
            lb11=CGRectMake(480, 300, 233, 146);
            image8=[[UIImageView alloc]initWithFrame:lb11];
            [image8 setImage:[UIImage imageNamed:@"crossbars@1x.png"]];
            [self.view addSubview:image8];
            [lable1 setTitle:@"lives on forever either in" forState:UIControlStateNormal]; 
            value1=5;
            break;
        case 5:  lb12=CGRectMake(510,190, 250, 60);
            image12=[[UIImageView alloc]initWithFrame:lb12];
            [image12 setImage:[UIImage imageNamed:@"heaven@1x.png"]];
            [self.view addSubview:image12];
            [lable1 setTitle:@"Heaven or " forState:UIControlStateNormal];
            value1=6;
            break;
                       
        case 6:image6.hidden=YES;
            image5.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            image9.hidden=YES;
            image10.hidden=YES;
            image11.hidden=YES;
            image12.hidden=YES;
            image13.hidden=YES;
            lable1.titleLabel.text=nil;
            newView *tab=[[newView alloc]initWithNibName:@"newView" bundle:[NSBundle mainBundle]];     
            [self.navigationController pushViewController:tab animated:NO];
            [tab release]; 
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
-(void)callbodyimages
{
    image13=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"body_down8@1x.png"]];
    lb14=CGRectMake(80, 70, 430,410);
    image13.frame=lb14;
    image13.animationImages =[NSArray arrayWithObjects:
                              
                              //[UIImage imageNamed:@"body_down1@1x.png"],
                              [UIImage imageNamed:@"body_down2@1x.png"],
                              [UIImage imageNamed:@"body_down3@1x.png"],
                              [UIImage imageNamed:@"body_down4@1x.png"],
                              [UIImage imageNamed:@"body_down5@1x.png"],
                              [UIImage imageNamed:@"body_down6@1x.png"],
                              [UIImage imageNamed:@"body_down7@1x.png"],
                              [UIImage imageNamed:@"body_down8@1x.png"],nil];
    [image13 setAnimationRepeatCount:1];
    image13.animationDuration= 0.90;
    
    image13.contentMode =UIViewAutoresizingFlexibleWidth;
    [image13 startAnimating];
    [self.view addSubview:image13];
    [self.view bringSubviewToFront:image13];
    
}


-(void)callcircleimage
{
    lb14=CGRectMake(155, 80,277, 374);
    image9.frame=lb14;
    image9.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"circle_blank1@1x.png"],
                             [UIImage imageNamed:@"circle_blank2@1x.png"],
                             [UIImage imageNamed:@"circle_blank3@1x.png"],
                             [UIImage imageNamed:@"circle_blank4@1x.png"],
                             [UIImage imageNamed:@"circle_blank5@1x.png"],
                             [UIImage imageNamed:@"circle_blank6@1x.png"],
                             [UIImage imageNamed:@"circle_blank7@1x.png"],
                             [UIImage imageNamed:@"circle_blank8@1x.png"],
                             [UIImage imageNamed:@"circle_blank9@1x.png"],nil];
    [image9 setAnimationRepeatCount:1];
    image9.animationDuration= 1.0;
    
    image9.contentMode =UIViewAutoresizingFlexibleWidth;
    [image9 startAnimating];
    [self.view addSubview:image9];
    [self.view bringSubviewToFront:image9];
    
}
-(void)callcrossimage
{
    image11=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"c8@1x.png"]];
    lb9=CGRectMake(350, 100, 97, 97);
    image11.frame=lb9;
    image11.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"c1@1x.png"],
                              [UIImage imageNamed:@"c2@1x.png"],
                              [UIImage imageNamed:@"c3@1x.png"],
                              [UIImage imageNamed:@"c4@1x.png"],
                              [UIImage imageNamed:@"c5@1x.png"],
                              [UIImage imageNamed:@"c6@1x.png"],
                              [UIImage imageNamed:@"c7@1x.png"],
                              [UIImage imageNamed:@"c8@1x.png"],nil];
    [image11 setAnimationRepeatCount:1];
    image11.animationDuration= 1.0;
    
    image11.contentMode =UIViewAutoresizingFlexibleWidth;
    [image11 startAnimating];
    [self.view addSubview:image11];
    [self.view bringSubviewToFront:image11];
}

-(IBAction)gobackview:(id)sender
{
    
    Extra *backview=[[Extra alloc]initWithNibName:@"Extra" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb10=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb10;
    [lable1 setTitle:@"The Bible also says that all of us have a body" forState:UIControlStateNormal];
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];
    
    text=[[UIButton alloc]init];
    text.frame=CGRectMake(900,650 , 100, 100);
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
    
    image5.hidden=NO;
    image6.hidden=NO;
    value1=1;
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


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
