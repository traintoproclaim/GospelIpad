//
//  score.m
//  GospelIpad
//
//  Created by vibha on 5/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "score.h"
#import "StartPresentationView.h"
#import "GospelIpadViewController.h"

@implementation score
@synthesize final,imgview,inst,quizlb,lb1,lb2,lb3,lb4,lb5;
@synthesize quote,next,imgview1;
@synthesize imgview4,imgview2,imgview3,imgview5,defination,text,quote1;
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
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    finalscore=[prefs integerForKey:@"value9"];
    NSLog(@"Final score %d",finalscore);
    final.text=[NSString stringWithFormat:@"%d",finalscore];
    
    CGRect lb=CGRectMake(00, -50, 1024, 200);
    CGRect lba=CGRectMake(300, 50, 500, 200);
    CGRect lbb=CGRectMake(580, 50, 300 , 200);
    CGRect fm1=CGRectMake(370,200,300,50);
    CGRect fm2=CGRectMake(370,280,300,50);
    CGRect fm3=CGRectMake(370,360,300,50);
    CGRect fm4=CGRectMake(370,440,300,50);
    CGRect fm5=CGRectMake(370,520,300,50);
    CGRect lb9=CGRectMake(0, 680, 1024, 90);
    CGRect lb8=CGRectMake(800, 500, 200,60);
    CGRect df=CGRectMake(300,200,400,300);
    
    
    quizlb.frame=lb;
    quizlb.font= [UIFont fontWithName:@"Opificio" size:54.f];
     quizlb.textAlignment=UITextAlignmentCenter;
    inst.frame=lba;
    final.font= [UIFont fontWithName:@"Opificio" size:40.f];
    inst.font= [UIFont fontWithName:@"Opificio" size:44.f];
    final.frame=lbb;
    lb1.frame=fm1;
    lb1.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lb2.frame=fm2;
    lb2.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lb3.frame=fm3;
    lb3.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lb4.frame=fm4;
    lb4.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lb5.frame=fm5;
    lb5.font= [UIFont fontWithName:@"Opificio" size:34.f];
    quote.frame=lb9;
    quote.titleLabel.numberOfLines=2;
    quote.backgroundColor=[UIColor blackColor];
    quote.titleLabel.textAlignment=UITextAlignmentCenter;
    quote.titleLabel.lineBreakMode=YES;
    
    quote.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    
    
    quote.backgroundColor=[UIColor blackColor];
    quote.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:quote];
    
    next.frame=lb8;
    defination.frame=df;
    defination.numberOfLines=6;
    defination.textAlignment=UITextAlignmentCenter;
    defination.font= [UIFont fontWithName:@"Opificio" size:44.f];
    [quote setTitle:[NSString stringWithFormat:@" You scored %d",finalscore] forState:UIControlStateNormal];
    quote1.frame=CGRectMake(0, 270, 480, 50);
    
    
    imgview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"result_circle8@1x.png"]];
    imgview1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"score_cross8@1x.png"]];
    imgview2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"score_cross8@1x.png"]];
    imgview3=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"score_cross8@1x.png"]];
    imgview4=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"score_cross8@1x.png"]];
    
    defination.hidden=YES;
    
    text.frame=CGRectMake(900,650 , 100, 100);
    text.backgroundColor=[UIColor clearColor];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    NSString *str=[perf objectForKey:@"lableoff"]; 
    if([str isEqualToString:@"1"])
    {
        quote.hidden=YES;
        text.hidden=NO;
    }else
    {
        quote.hidden=NO;
        text.hidden=YES;
    }
    
    

}

-(void)labelTap
{
    quote.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
    
}
-(void)showlable
{
    quote.hidden=NO;
    text.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];
    
}

-(IBAction)nextbutton:(id)sender
{ 
    
    NSLog(@"Count %d",count);
    count=count+1;
    
    if(count==1)
    {
        [self campare1];
    }
    if(count==2)
    {
        [self campare2];
    }
    if(count==3)
    {
        [self campare3];
    }
    if(count==4)
    {
        [self campare4];
    }
    if(count==5)
    {
        [self campare5];
    }
    if(count==6)
    {
        lb1.hidden=YES;
        lb2.hidden=YES;
        lb3.hidden=YES;
        lb4.hidden=YES;
        lb5.hidden=YES;
        imgview.hidden=YES;
        imgview1.hidden=YES;
        imgview2.hidden=YES;
        imgview3.hidden=YES;
        imgview4.hidden=YES;
        
        defination.hidden=NO;
        
        [quote setTitle:@"   Now like I said before I will give you the best definition               you have ever heard of what a Christian is ..."forState:UIControlStateNormal];
        
        
    }
    if(count==7)
    {
        lb1.hidden=YES;
        lb2.hidden=YES;
        lb3.hidden=YES;
        lb4.hidden=YES;
        lb5.hidden=YES;
        imgview.hidden=YES;
        imgview1.hidden=YES;
        imgview2.hidden=YES;
        imgview3.hidden=YES;
        imgview4.hidden=YES;
        CGRect df=CGRectMake(350,230,344,300);
        defination.hidden=YES; 
        imgview5=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"screen_1_bible@1x.png"]];
        imgview5.frame=df;
        [self.view addSubview:imgview5];
        [self.view bringSubviewToFront:imgview5];
        quote.titleLabel.textAlignment=UITextAlignmentCenter;
    [quote setTitle:@"This is also a summary of the message of the entire Bible, in 6.5        minutes, It will be great to see what you think of it." forState:UIControlStateNormal];
        
    }
    if(count==8)
    {
        imgview.hidden=YES;
        imgview1.hidden=YES;
        imgview2.hidden=YES;
        imgview3.hidden=YES;
        imgview4.hidden=YES;
        imgview5.hidden=YES;
        StartPresentationView *tab1=[[StartPresentationView alloc]initWithNibName:@"StartPresentationView" bundle:[NSBundle mainBundle]];	
        
        [self.navigationController pushViewController:tab1 animated:NO];
        [tab1 release]; 
        
        
    }
    NSLog(@"Conut1 %d",count);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
}  
-(void)longTap
{
    NSLog(@"Long Press");
    GospelIpadViewController *Controller=[[GospelIpadViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)campare1
{
    
    if((finalscore>=49)&&count==1)
    {
        imgview.frame=CGRectMake(200,180,550,95);
        [quote setTitle:@"According to this you are an ANGEL!  Wow!" forState:UIControlStateNormal];
        imgview.image=[UIImage imageNamed:@"result_circle8@1x.png"];

        [self callcircleimage];
        count=5;
        
    }
    else
    {
        imgview1.frame=CGRectMake(200,180,550,95);
        
        
        [self callcrossimage];
        imgview1.image=[UIImage imageNamed:@"score_cross8@1x.png"];
      
        [quote setTitle:@"49 - 50 is Angelic, so you are not an angel ..." forState:UIControlStateNormal];
        
    }
}
-(void)campare2
{
    
    if((finalscore>=46&&finalscore<=48)&&count==2)
    {
        
        imgview.frame=CGRectMake(200,260,550,95);
     
        [quote setTitle:@"According to this you are Saint ......  Wow!" forState:UIControlStateNormal];         
        [self callcircleimage];
        imgview.image=[UIImage imageNamed:@"result_circle8@1x.png"];

        count=5;
        
    }else
    {
        imgview2.frame=CGRectMake(200,260,550,95);
        
        
        [self callcrossimage1];
        imgview2.image=[UIImage imageNamed:@"score_cross8@1x.png"];
      
        [quote setTitle:@"46-48 is Saintly, so you are not Saint ..." forState:UIControlStateNormal];  
        
        
    }
    
}
-(void)campare3
{
    if((finalscore>=18&&finalscore<=45)&&count==3)
    {
        imgview.frame=CGRectMake(200,340,550,95);
    [quote setTitle:@"    According to this you are a good person! [At least you are not    struggling or seek help!]" forState:UIControlStateNormal];    
        
        [self callcircleimage];
        imgview.image=[UIImage imageNamed:@"result_circle8@1x.png"];

        count=5;
        
        
    }
    else
    {
        imgview3.frame=CGRectMake(200,340,550,95);
        
        [self callcrossimage2];
        imgview3.image=[UIImage imageNamed:@"score_cross8@1x.png"];
           [quote setTitle:@"You have scored under the good rating." forState:UIControlStateNormal];    
        
    }
    
}
-(void)campare4
{
    
    if((finalscore>=12&&finalscore<=17)&&count==4)
    {
        imgview.frame=CGRectMake(200,420,550,95);
              [quote setTitle:@"But you have been a lot more honest with me than most                people. Thank you." forState:UIControlStateNormal];   
        [self callcircleimage];
        count=5;
        imgview.image=[UIImage imageNamed:@"result_circle8@1x.png"];

        
    }else
    {
        imgview4.frame=CGRectMake(200,420,550,95);
        
        
        [self callcrossimage3];
        imgview4.image=[UIImage imageNamed:@"score_cross8@1x.png"];
     
        [quote setTitle:@"And under struggling, which leaves us with the last rating ..." forState:UIControlStateNormal];
    }
    
}
-(void)campare5
{
    
    if(finalscore<12&&count==5)
    {
        imgview.frame=CGRectMake(200,500,550,95);
      
        [quote setTitle:@"Seek help. You have being very honest, thank you for that ..." forState:UIControlStateNormal];
        
        
        [self callcircleimage];
        imgview.image=[UIImage imageNamed:@"result_circle8@1x.png"];

        count=5;
        
    } 
    
}
-(void)callcrossimage
{
    
    imgview1.animationImages =[NSArray arrayWithObjects:
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"], 
                               [UIImage imageNamed:@"score_cross1@1x.png"],
                               [UIImage imageNamed:@"score_cross2@1x.png"],
                               [UIImage imageNamed:@"score_cross3@1x.png"],
                               [UIImage imageNamed:@"score_cross4@1x.png"],
                               [UIImage imageNamed:@"score_cross5@1x.png"],
                               [UIImage imageNamed:@"score_cross6@1x.png"],
                               [UIImage imageNamed:@"score_cross7@1x.png"],
                               [UIImage imageNamed:@"score_cross8@1x.png"],nil];
    [imgview1 setAnimationRepeatCount:1];
    imgview1.animationDuration= 1.50;
    
    imgview1.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview1 startAnimating];
    [self.view addSubview:imgview1];
    [self.view bringSubviewToFront:imgview1];
    imgview1.hidden=NO;    
}

-(void)callcrossimage1
{
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:0 forKey:@"skip"];
    imgview2.animationImages =[NSArray arrayWithObjects:
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],                             [UIImage imageNamed:@"score_cross1@1x.png"],
                               [UIImage imageNamed:@"score_cross2@1x.png"],
                               [UIImage imageNamed:@"score_cross3@1x.png"],
                               [UIImage imageNamed:@"score_cross4@1x.png"],
                               [UIImage imageNamed:@"score_cross5@1x.png"],
                               [UIImage imageNamed:@"score_cross6@1x.png"],
                               [UIImage imageNamed:@"score_cross7@1x.png"],
                               [UIImage imageNamed:@"score_cross8@1x.png"],
                               nil];
    [imgview2 setAnimationRepeatCount:1];
    
    imgview2.animationDuration= 1.50;
    
    imgview2.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview2 startAnimating];
    [self.view addSubview:imgview2];
    [self.view bringSubviewToFront:imgview2];
    imgview2.hidden=NO;
    
}
-(void)callcrossimage2
{
    
    imgview3.animationImages =[NSArray arrayWithObjects:
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],                             [UIImage imageNamed:@"score_cross1@1x.png"],
                               [UIImage imageNamed:@"score_cross2@1x.png"],
                               [UIImage imageNamed:@"score_cross3@1x.png"],
                               [UIImage imageNamed:@"score_cross4@1x.png"],
                               [UIImage imageNamed:@"score_cross5@1x.png"],
                               [UIImage imageNamed:@"score_cross6@1x.png"],
                               [UIImage imageNamed:@"score_cross7@1x.png"],
                               [UIImage imageNamed:@"score_cross8@1x.png"],
                               nil];
    [imgview3 setAnimationRepeatCount:1];
    
    
    imgview3.animationDuration= 1.50;
    
    imgview3.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview3 startAnimating];
    [self.view addSubview:imgview3];
    [self.view bringSubviewToFront:imgview3];
    imgview3.hidden=NO;
}




-(void)callcrossimage3
{
    
    imgview4.animationImages =[NSArray arrayWithObjects:
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],
                               [UIImage imageNamed:@"result_circle_blank@1x.png"],                             [UIImage imageNamed:@"score_cross1@1x.png"],
                               [UIImage imageNamed:@"score_cross2@1x.png"],
                               [UIImage imageNamed:@"score_cross3@1x.png"],
                               [UIImage imageNamed:@"score_cross4@1x.png"],
                               [UIImage imageNamed:@"score_cross5@1x.png"],
                               [UIImage imageNamed:@"score_cross6@1x.png"],
                               [UIImage imageNamed:@"score_cross7@1x.png"],
                               [UIImage imageNamed:@"score_cross8@1x.png"],                               nil];
    [imgview4 setAnimationRepeatCount:1];
    imgview4.animationDuration= 1.50;
    
    imgview4.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview4 startAnimating];
    [self.view addSubview:imgview4];
    [self.view bringSubviewToFront:imgview4];
    imgview4.hidden=NO;    
}


-(void)callcircleimage
{
    
    imgview.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],
                              [UIImage imageNamed:@"result_circle_blank@1x.png"],  
                              [UIImage imageNamed:@"result_circle1@1x.png"],
                              [UIImage imageNamed:@"result_circle2@1x.png"],
                              [UIImage imageNamed:@"result_circle3@1x.png"],
                              [UIImage imageNamed:@"result_circle4@1x.png"],
                              [UIImage imageNamed:@"result_circle5@1x.png"],
                              [UIImage imageNamed:@"result_circle6@1x.png"],
                              [UIImage imageNamed:@"result_circle7@1x.png"],
                              [UIImage imageNamed:@"result_circle8@1x.png"],
                                nil];
    [imgview setAnimationRepeatCount:1];
    
    
    imgview.animationDuration= 1.50;
    imgview.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview startAnimating];
    
    [self.view addSubview: imgview];
    [self.view bringSubviewToFront:imgview];
    
    imgview.hidden=NO;
    
}





- (void)viewDidUnload
{
    [super viewDidUnload];
    imgview.hidden=YES;
    imgview1.hidden=YES;
    imgview2.hidden=YES;
    imgview3.hidden=YES;
    imgview4.hidden=YES;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
