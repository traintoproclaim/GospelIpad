//
//  ExtraQuizView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ExtraQuizView.h"

@implementation ExtraQuizView
@synthesize back,lable1,lable2,lable3,lable5,lable6,lable7,lable8,lable9,lable10;

int gos1=1;
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
    lable1.font= [UIFont fontWithName:@"Opificio" size:44.f];
    lable2.font= [UIFont fontWithName:@"Opificio" size:30.f];
    lable3.font= [UIFont fontWithName:@"Opificio" size:44.f];
    
    lable5.font= [UIFont fontWithName:@"Opificio" size:44.f];
    lable6.font= [UIFont fontWithName:@"Opificio" size:30.f];
    lable7.font= [UIFont fontWithName:@"Opificio" size:30.f];
    lable8.font= [UIFont fontWithName:@"Opificio" size:30.f];
    lable9.font= [UIFont fontWithName:@"Opificio" size:30.f];
    lable10.font= [UIFont fontWithName:@"Opificio" size:30.f];
    
    
    lable1.frame=CGRectMake(0, 10, 1024, 50);
    lable1.textAlignment=UITextAlignmentCenter;
    
    lable2.frame=CGRectMake(0,40,1024, 200);
    lable2.textAlignment=UITextAlignmentCenter;
    
    lable3.frame=CGRectMake(0,130,1024, 200);
    lable3.textAlignment=UITextAlignmentCenter;
    
    lable10.frame=CGRectMake(0, 200, 1024, 200);
    lable10.textAlignment=UITextAlignmentCenter;
    
    lable8.frame=CGRectMake(0, 310, 1024, 100);
    lable8.textAlignment=UITextAlignmentCenter;

    
    lable9.frame=CGRectMake(0, 355, 1024, 100);
    lable9.textAlignment=UITextAlignmentCenter;
    
    
    lable5.frame=CGRectMake(0, 380, 1024, 200);
    lable5.textAlignment=UITextAlignmentCenter;
    
    lable6.frame=CGRectMake(0, 450, 1024, 200);
    lable6.textAlignment=UITextAlignmentCenter;
    lable7.frame=CGRectMake(0, 510, 1024, 300);
    lable7.textAlignment=UITextAlignmentCenter;
    lable2.numberOfLines=2;
    
    lable3.numberOfLines=3;
    lable10.numberOfLines=2;
    lable8.numberOfLines=1;
    lable9.numberOfLines=1;
    lable5.numberOfLines=2;
    lable6.numberOfLines=2;
    lable7.numberOfLines=3;

}
-(IBAction)gobackview:(id)sender
{
    
    QuizView *backview=[[QuizView alloc]initWithNibName:@"QuizView" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (gos1)
    {
            
        case 1:gos1=2;
            QuizIntroView *tab1=[[QuizIntroView alloc]initWithNibName:@"QuizIntroView" bundle:[NSBundle mainBundle]];	
            
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
-(void)viewWillAppear:(BOOL)animated
{
    gos1=1;
    lable1.hidden=NO;
    lable2.hidden=NO;
    lable3.hidden=NO;
    lable10.hidden=NO;
    lable5.hidden=NO;
    lable6.hidden=NO;
    lable7.hidden=NO;
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
