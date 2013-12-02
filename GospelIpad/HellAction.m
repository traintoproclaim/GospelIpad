//
//  HellAction.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "HellAction.h"
#import "StartScreen15.h"
#import "GospelIpadViewController.h"
#import "StartScreen14.h"
#import "Extra10.h"


@implementation HellAction
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image17,image18;
@synthesize image10,image11,image12,text;
@synthesize lable1,lable2,back;
int value15=1;

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
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    
    value=[valu integerForKey:@"hell"];
    
    NSLog(@"Touch count %d",value15);
    switch (value15)
    {
        case 1:if(value==0)
        {
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            lable2.hidden=YES;
            image8.hidden=YES;
            lb7=CGRectMake(80,200, 947,180);
            image18=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"eternity_sec@1x.png"]];
            image18.frame=lb7;
            [self.view addSubview:image18];
            
            [lable1 setTitle:@"not just a mere billion years. So let’s do a quick review." forState:UIControlStateNormal];
            value15=2;
        }else
        {
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            lable2.hidden=YES;
            [self calleternityanimation];
           
            [lable1 setTitle:@"We’re talking about all of eternity here." forState:UIControlStateNormal]; 
            
            value15=2;  
        }
            
            
            break;
        case 2:
            if(value==0)
            {
                image18.hidden=YES;
              
        [lable1 setTitle:@"According to the Bible, what kind of record must we have to           get into Heaven? " forState:UIControlStateNormal];   
                
                
                value15=3;
            }else
            {
                image8.hidden=YES;
                lb7=CGRectMake(80,200, 947,180);
                image18=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"eternity_sec@1x.png"]];
                image18.frame=lb7;
                [self.view addSubview:image18];
                
                [lable1 setTitle:@"not just a mere billion years. So let’s do a quick review." forState:UIControlStateNormal];
                value15=3;
            }
            
            
            break;
        case 3:
            if(value==0)
            {
                image18.hidden=YES;
                
                [self recoranimation];
              
                [lable1 setTitle:@"{Perfect}. " forState:UIControlStateNormal];  
                value15=4;
            }else
            {
                image18.hidden=YES;
               
    [lable1 setTitle:@"According to the Bible, what kind of record must we have to         get into Heaven? " forState:UIControlStateNormal]; 
                
                value15=4;
            }
            
            break;
        case 4:
            if(value==0)
            {
                [lable1 setTitle:@"Now, there are only two ways to get a perfect record." forState:UIControlStateNormal]; 
                
                value15=5; 
            }else
            {
                image18.hidden=YES;
                [self recoranimation];
               
                [lable1 setTitle:@"{Perfect}. " forState:UIControlStateNormal]; 
                value15=5; 
            }
            
            
            break;
        case 5:
            if(value==0)
            {
                lb6=CGRectMake(550,100, 340,274);
                image5=[[UIImageView alloc]initWithFrame:lb6];
                [image5 setImage:[UIImage imageNamed:@"perfect_text@1x.png"]];
                [self.view addSubview:image5];
                [lable1 setTitle:@"One is to be a perfect person," forState:UIControlStateNormal];  
                value15=6;
            }else
            {
                [lable1 setTitle:@"Now, there are only two ways to get a perfect record." forState:UIControlStateNormal];                value15=6;   
            }
            
            break;
            
        case 6:
            if(value==0)
            {
                [self callcrossimage];
                [lable1 setTitle:@"and we’ve all blown this one." forState:UIControlStateNormal];  
                
                value15=7;
            }else
            {
                lb6=CGRectMake(550,100, 340,274);
                image5=[[UIImageView alloc]initWithFrame:lb6];
                [image5 setImage:[UIImage imageNamed:@"perfect_text@1x.png"]];
                [self.view addSubview:image5];
                [lable1 setTitle:@"One is to be a perfect person," forState:UIControlStateNormal];
                value15=7;
            }
            
            
            break;
        case 7:
            if(value==0)
            {
                image5.hidden=YES;
                image9.hidden=YES;
            
               
                
                lb7=CGRectMake(500,100,515,300);
                image17=[[UIImageView alloc]initWithFrame:lb7];
                [image17 setImage:[UIImage imageNamed:@"soul_transfar_small-2a@1x.png"]];
                [self.view addSubview:image17];
                
                [self soultransfer];
               
                [lable1 setTitle:@"  The only other way is to have Jesus give us His perfect              record when we are completely forgiven."forState:UIControlStateNormal];
                
                value15=8;
            }else
            {
                [self callcrossimage];
                [lable1 setTitle:@"and we’ve all blown this one." forState:UIControlStateNormal];
                value15=8;  
            }
            break;
        case 8:
            if(value==0)
            {
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
                image17.hidden=YES;
                lable1.titleLabel.text=nil;
                tab1=[[StartScreen15 alloc]initWithNibName:@"StartScreen15" bundle:[NSBundle mainBundle]];            
                [self.navigationController pushViewController:tab1 animated:NO];
                [tab1 release]; 
                break;
                
                
            }else
            {
                image5.hidden=YES;
                image9.hidden=YES;
                lb7=CGRectMake(500,100,515,300);
                image17=[[UIImageView alloc]initWithFrame:lb7];
                [image17 setImage:[UIImage imageNamed:@"soul_transfar_small-2a@1x.png"]];
                [self.view addSubview:image17];
                [self soultransfer];
                
               
                [lable1 setTitle:@"  The only other way is to have Jesus give us His perfect                 record when we are completely forgiven."forState:UIControlStateNormal];
                value15=9;
            }
            break;
        case 9:  image.hidden=YES;
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            image9.hidden=YES;
            image17.hidden=YES;
            lable1.titleLabel.text=nil;
            tab1=[[StartScreen15 alloc]initWithNibName:@"StartScreen15" bundle:[NSBundle mainBundle]];            
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

-(void)recoranimation
{
    image4=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"perfect_record8@1x.png"]];
    lb9=CGRectMake(130,100, 232,331);
    image4.frame=lb9;
    image4.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"perfect_record1@1x.png"],
                             [UIImage imageNamed:@"perfect_record2@1x.png"],
                             [UIImage imageNamed:@"perfect_record3@1x.png"],
                             [UIImage imageNamed:@"perfect_record4@1x.png"],
                             [UIImage imageNamed:@"perfect_record5@1x.png"],
                             [UIImage imageNamed:@"perfect_record6@1x.png"],
                             [UIImage imageNamed:@"perfect_record7@1x.png"],
                             [UIImage imageNamed:@"perfect_record8@1x.png"],
                             
                             nil];
    [image4 setAnimationRepeatCount:1];
    image4.animationDuration= 0.60;
    
    image4.contentMode =UIViewAutoresizingFlexibleWidth;
    [image4 startAnimating];
    [self.view addSubview:image4];
    [self.view bringSubviewToFront:image4];
    
}
-(void)soultransfer
{
    
    image6=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"soul_transfar_small-2i@1x.png"]];
    lb7=CGRectMake(500,100,515,300);
    image6.frame=lb7;
    image6.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"soul_transfar_small-2a@1x.png"],
                             [UIImage imageNamed:@"soul_transfar_small-2b@1x.png"],
                             [UIImage imageNamed:@"soul_transfar_small-2c@1x.png"],
                             [UIImage imageNamed:@"soul_transfar_small-2d@1x.png"],
                             [UIImage imageNamed:@"soul_transfar_small-2e@1x.png"],
                             [UIImage imageNamed:@"soul_transfar_small-2f@1x.png"],
                           
                              [UIImage imageNamed:@"soul_transfar_small-2i@1x.png"],
                             nil];
    [image6 setAnimationRepeatCount:1];
    
    [NSTimer scheduledTimerWithTimeInterval:3.0
                                     target:self selector:@selector(startAnimations:)
                                   userInfo:nil
                                    repeats:NO];
    image6.animationDuration= 1.0;
    
    
    
    
}
- (void)startAnimations:(NSTimer *)timer
{
    image6.contentMode =UIViewAutoresizingFlexibleWidth;
    [image6 startAnimating];
    [self.view addSubview:image6];
    [self.view bringSubviewToFront:image6];   
    [timer invalidate];
}
-(void)calleternityanimation
{
    image8=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"eternity11@1x.png"]];
    lb7=CGRectMake(80,200, 947,180);
    image8.frame=lb7;
    image8.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"eternity1@1x.png"],
                             [UIImage imageNamed:@"eternity2@1x.png"],
                             [UIImage imageNamed:@"eternity3@1x.png"],
                             [UIImage imageNamed:@"eternity4@1x.png"],
                             [UIImage imageNamed:@"eternity5@1x.png"],
                             [UIImage imageNamed:@"eternity6@1x.png"],
                             [UIImage imageNamed:@"eternity7@1x.png"],
                             [UIImage imageNamed:@"eternity8@1x.png"],
                             [UIImage imageNamed:@"eternity9@1x.png"],
                             [UIImage imageNamed:@"eternity10@1x.png"],
                             [UIImage imageNamed:@"eternity11@1x.png"],

                             nil];
    [image8 setAnimationRepeatCount:1];
    image8.animationDuration= 1.0;
    
    image8.contentMode =UIViewAutoresizingFlexibleWidth;
    [image8 startAnimating];
    [self.view addSubview:image8];
    [self.view bringSubviewToFront:image8];
}
-(void)callcrossimage
{
    image9=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cross8@1x.png"]];
    lb9=CGRectMake(590,110, 218, 280);
    image9.frame=lb9;
    image9.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"cross1@1x.png"],
                             [UIImage imageNamed:@"cross2@1x.png"],
                             [UIImage imageNamed:@"cross3@1x.png"],
                             [UIImage imageNamed:@"cross4@1x.png"],
                             [UIImage imageNamed:@"cross5@1x.png"],
                             [UIImage imageNamed:@"cross6@1x.png"],
                             [UIImage imageNamed:@"cross7@1x.png"],
                             [UIImage imageNamed:@"cross8@1x.png"],nil];
    [image9 setAnimationRepeatCount:1];
    image9.animationDuration= 1.0;
    
    image9.contentMode =UIViewAutoresizingFlexibleWidth;
    [image9 startAnimating];
    [self.view addSubview:image9];
    [self.view bringSubviewToFront:image9];
}
-(IBAction)gobackview:(id)sender
{
    Extra10 *backview=[[Extra10 alloc]initWithNibName:@"Extra10" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lable1.hidden=NO;
    image1.hidden=NO;
    image2.hidden=NO;
    image3.hidden=NO;
    
    value15=1;
    lb1=CGRectMake(0, 680, 1024, 90);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.lineBreakMode=YES;
    lable1.titleLabel.numberOfLines=4;
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
    
    
    
    
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    
    value=[valu integerForKey:@"hell"];
    if(value==1)
    {
        lb3=CGRectMake(0, 200, 1024, 300);
        
        lable2=[[UILabel alloc]initWithFrame:lb3];
        lable2.text=@"Thanks for being honest. It would be a tragedy for you to end up in Hell";
        lable2.font= [UIFont fontWithName:@"Opificio" size:44.f];
        lable2.textAlignment=UITextAlignmentCenter;
        lable2.textColor=[UIColor grayColor];
        lable2.lineBreakMode=UILineBreakModeWordWrap;
        lable2.numberOfLines=3;
        lable2.backgroundColor=[UIColor clearColor];
        [self.view addSubview:lable2];
      
[lable1 setTitle:@"Thanks for being honest. It would be a tragedy for you to end up   in Hell." forState:UIControlStateNormal];
    }else
    {
        [self calleternityanimation];
      
        [lable1 setTitle:@"We’re talking about all of eternity here. " forState:UIControlStateNormal];
        
    }
    
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
