//
//  VideoView.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "VideoView.h"
#import "GospelIpadViewController.h"
#import "StartScreen16.h"
@implementation VideoView
@synthesize play,themovie;
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
    [[UIApplication sharedApplication]setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    // Do any additional setup after loading the view from its nib.
    
    [self playmovie];

}
-(void)playmovie                                             
{
    [[UIApplication sharedApplication]setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    NSBundle *bundle =[NSBundle mainBundle];
    NSString *moviepath = [bundle pathForResource:@"G7_Video_2013_640x360WS" ofType:@"mp4"];
    NSURL *movieURL =[[NSURL fileURLWithPath:moviepath]retain];
    themovie=[[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    
    [[NSNotificationCenter defaultCenter] addObserver:self  
                                             selector:@selector(moviePlayBackDidFinish:)  
                                                 name:MPMoviePlayerPlaybackDidFinishNotification  
                                               object:themovie];      
    [themovie.view setFrame:self.view.bounds];
   themovie.controlStyle=MPMovieControlStyleEmbedded;
    //themovie.scalingMode = MPMovieScalingModeFill;
   // themovie.scalingMode = MPMovieScalingModeAspectFill;
    themovie.shouldAutoplay = YES; 
   themovie.view.frame = CGRectMake(0.0, 0.0, 1024,768);
    
    
    [themovie play];
    if([themovie isFullscreen])
    {
        [[UIApplication sharedApplication]setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
        
    }
    [self.view addSubview:themovie.view];
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touch began");
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
}  
-(void)longTap
{
    NSLog(@"Long Press");
    
    [themovie stop];
    
    GospelIpadViewController *Controller=[[GospelIpadViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
    
    
    
}
- (void) moviePlayBackDidFinish : (NSNotification *) notification
{
    [[UIApplication sharedApplication]setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    
    
    NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
    [bc setObject:@"2" forKey:@"back"];
    
    MPMoviePlayerController *themovie1 = [notification object];  
    [[NSNotificationCenter defaultCenter] removeObserver:self  
                                                    name:MPMoviePlayerPlaybackDidFinishNotification  
                                                  object:themovie1];  
    
    [themovie1.view removeFromSuperview];
    
    [themovie1 stop];
    [themovie1 release];
    
    
    StartScreen16 *tab1=[[StartScreen16 alloc]initWithNibName:@"StartScreen16" bundle:[NSBundle mainBundle]];   
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
-(void)viewWillAppear:(BOOL)animated
{
    [[UIApplication sharedApplication]setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);

}

@end
