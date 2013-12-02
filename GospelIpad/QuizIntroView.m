//
//  QuizIntroView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "QuizIntroView.h"

#import "Questions1.h"
#import "ExtraQuizView.h"

@implementation QuizIntroView
@synthesize next,lable,back;

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
    CGRect lb1=CGRectMake(0, 50, 1024, 600);
    CGRect lb2=CGRectMake(800, 600, 200,60);
    lable.frame=lb1;
    lable.numberOfLines=8;
    lable.textAlignment=UITextAlignmentCenter;
    lable.font= [UIFont fontWithName:@"Opificio" size:55.f];
    next.frame=lb2;

}
-(IBAction)gobackview:(id)sender
{
    ExtraQuizView *backview=[[ExtraQuizView alloc]initWithNibName:@"ExtraQuizView" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(IBAction)nextview:(id)sender
{
    NSUserDefaults *pref2 = [NSUserDefaults standardUserDefaults];
    [pref2 setInteger:0 forKey:@"val"];
    
    Questions1 *tab1=[[Questions1 alloc]initWithNibName:@"Questions1" bundle:[NSBundle mainBundle]];	
    
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];   
    
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
