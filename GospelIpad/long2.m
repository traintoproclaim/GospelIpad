//
//  long2.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "long2.h"
#import "Extra8.h"
#import "longnext.h"
#import "GospelIpadViewController.h"
#import "long3.h"


@implementation long2
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image24,image26,image28,text;
@synthesize image10,image11,image12,image17,image18,image19,image20,pname,image21,image22,image23,image25;
@synthesize lable1,lable2,lable3,back,lable4,image27;
@synthesize myview;

int longval2=1;

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
    myview=[UIView new];
    myview.frame=CGRectMake(250, 12, 200, 200);
    myview.backgroundColor=[UIColor clearColor];
    [self.view addSubview:myview];
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]];
    
    lable1.frame=CGRectMake(0, 680, 1024, 90);
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=2;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"You would come before God at judgment and Jesus would say" forState:UIControlStateNormal]; 
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];   
    
    [self callglobebodyani];
    
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
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (longval2)
    {
        case 1:lb15=CGRectMake(490,5,500,203);
            image12=[[UIImageView alloc]initWithFrame:lb15];
            [image12 setImage:[UIImage imageNamed:@"commentbox@1x.png"]];
            [self.view addSubview:image12];
            lb14=CGRectMake(540,50,400,130);
            lable4=[[UILabel alloc]initWithFrame:lb14];
            lable4.text=@"I’m sorry, but I can’t let you into Heaven.";
            lable4.font= [UIFont fontWithName:@"Opificio" size:30.f];
            lable4.numberOfLines=4;
            lable4.textAlignment=UITextAlignmentCenter;
            lable4.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable4];
           
            [lable1 setTitle:@"“I’m sorry, but I can’t let you into Heaven." forState:UIControlStateNormal];
            longval2=2;
            
            break;
        case 2:lable4.text=@"You don’t have a perfect record, I have to be just and send you to Hell.";
          
            [lable1 setTitle:@"    You don’t have a perfect record, I have to be just and                      send you to Hell." forState:UIControlStateNormal];
            
            longval2=3;
            
            break;
        case 3: 
            
            lable4.text=@"I loved you so much I tried at least six ways to get through to you.";
            [lable1 setTitle:@"I loved you so much I tried at least six ways to get through to you." forState:UIControlStateNormal];  
            longval2=4;
            break;
            
          
        case 4:image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image19.hidden=YES;
            image20.hidden=YES;
            image21.hidden=YES;
            image22.hidden=YES;
            image23.hidden=YES;
            image24.hidden=YES;
            image25.hidden=YES;
            image1.hidden=YES;
            image26.hidden=YES;
            image27.hidden=YES;
            image28.hidden=YES;
            
            long3 *ta=[[long3 alloc]initWithNibName:@"long3" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:ta animated:NO];
            [ta release];
            break;
            
            
            
            
            
            
            
    }
}

-(void)callglobebodyani
{
    image11=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"earth7@1x.png"]];
    lb14=CGRectMake(40,250,600,223);
    image11.frame=lb14;
    image11.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"earth1@1x.png"],
                              [UIImage imageNamed:@"earth2@1x.png"],
                              [UIImage imageNamed:@"earth3@1x.png"],
                              [UIImage imageNamed:@"earth4@1x.png"],
                              [UIImage imageNamed:@"earth5@1x.png"],
                              [UIImage imageNamed:@"earth6@1x.png"],
                              [UIImage imageNamed:@"earth7@1x.png"],
                              nil];
    [image11 setAnimationRepeatCount:1];
    image11.animationDuration= 1.00f;
    
    image11.contentMode =UIViewAutoresizingFlexibleWidth;
    [image11 startAnimating];
    [self.view addSubview:image11];
    [self.view bringSubviewToFront:image11];
}

-(IBAction)gobackview:(id)sender
{
    longnext *backview=[[longnext alloc]initWithNibName:@"longnext" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image11.hidden=NO;
    longval2=1;    
    
}
-(void)longTap
{
    NSLog(@"Long Press");
    GospelIpadViewController *Controller=[[GospelIpadViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
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
