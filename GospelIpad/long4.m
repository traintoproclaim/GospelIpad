//
//  long4.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "long4.h"
#import "GospelIpadViewController.h"
#import "long3.h"
#import "Extra8.h"

@implementation long4
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image24,image26,image28,text;
@synthesize image10,image11,image12,image17,image18,image19,image20,pname,image21,image22,image23,image25;
@synthesize lable1,lable2,lable3,back,lable4,image27;
@synthesize myview;

int longval4=1;

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
    myview.frame=CGRectMake(700, 00, 270, 406);
    myview.backgroundColor=[UIColor clearColor];
    [self.view addSubview:myview];
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]];
    image22=[UIImageView new];
    UIImage *img3=[UIImage imageNamed:@"church_icon@1x.png"];
    
    image22.image=img3;
    image22.frame=CGRectMake((myview.frame.size.width-img3.size.width)/2, 30, img3.size.width, img3.size.height);
    [self.myview addSubview:image22];
    
    lable1.frame=CGRectMake(0, 680, 1024, 90);
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=2;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"You could have found out about Me at one of them." forState:UIControlStateNormal]; 
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
    
    
    [self callglobebodyani];
    
}
-(void)callglobebodyani
{
    image11=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"earth7@1x.png"]];
    lb14=CGRectMake(40,250,600,223);
    image11.frame=lb14;
    
    image11.contentMode =UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:image11];
    [self.view bringSubviewToFront:image11];
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
    switch (longval4)
    {
        case 1:image22.hidden=YES;
            [self callglobeimage];
          
    [lable1 setTitle:@"Fifthly I created a world so beautiful that it was impossible not to   know that I was there." forState:UIControlStateNormal];  
            longval4=2;
            
            break;
        case 2:image23.hidden=YES;
            image24=[UIImageView new];
            UIImage *img4=[UIImage imageNamed:@"jesus_white_icon1@1x.png"];
            
            image24.image=img4;
            image24.frame=CGRectMake((myview.frame.size.width-img4.size.width)/2, 0, img4.size.width, img4.size.height);
            [self.myview addSubview:image24];
            [lable1 setTitle:@"And finally, I rose from the dead to prove that I was God and that everything I said in the Bible was true." forState:UIControlStateNormal];   
            longval4=3;
            
            break;
        case 3:
            image24.hidden=YES;
            [self calljesusanimation];
            
          
            [lable1 setTitle:@"Yet, you just did nothing." forState:UIControlStateNormal];  
            longval4=4;
            
            break;
        case 4:
            image24.hidden=YES;
            lable4.hidden=NO;
            image12.hidden=NO;
            lable4.text=@" I’m sorry I can’t let you into Heaven";
            [lable1 setTitle:@"I’m sorry I can’t let you into Heaven" forState:UIControlStateNormal];
            
            longval4=5;
            
            break;
        case 5:lable4.text=@"I have to send you to Hell.";
            [lable1 setTitle:@"I have to send you to Hell." forState:UIControlStateNormal]; 
            
            longval4=6;
            
            break;
        case 6:
            image11.hidden=YES;
            [self callbodyinhell];
            lable4.hidden=YES;
            image12.hidden=YES;
            longval4=7;
            
            break;
        case 7:image4.hidden=YES;
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
            
            Extra8 *ta=[[Extra8 alloc]initWithNibName:@"Extra8" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:ta animated:NO];
            [ta release];
            break;
            
            
    }
}
-(void)callbodyinhell
{
    [lable1 setTitle:@"" forState:UIControlStateNormal]; 
    image27=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"earth1@1x.png"]];
    lb14=CGRectMake(40,250,600,223);
    image27.frame=lb14;
    image27.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"earth7@1x.png"],
                              [UIImage imageNamed:@"down1@1x.png"],
                              [UIImage imageNamed:@"down2@1x.png"],
                              [UIImage imageNamed:@"down3@1x.png"],
                              [UIImage imageNamed:@"down4@1x.png"],
                              [UIImage imageNamed:@"down5@1x.png"],
                              [UIImage imageNamed:@"down6@1x.png"],
                              [UIImage imageNamed:@"down7@1x.png"],
                              [UIImage imageNamed:@"earth1@1x.png"],
                              
                              nil];
    [image27 setAnimationRepeatCount:1];
    image27.animationDuration= 1.0f;
    
    image27.contentMode =UIViewAutoresizingFlexibleWidth;
    [image27 startAnimating];
    [self.view addSubview:image27];
    [self.view bringSubviewToFront:image27];
    
}
-(void)calljesusanimation
{
    
    image24=[UIImageView new];
    UIImage *img4=[UIImage imageNamed:@"jesus_white_icon9@1x.png"];
    
    image24.image=img4;
    image24.frame=CGRectMake((myview.frame.size.width-img4.size.width)/2,0, img4.size.width, img4.size.height);
    image24.animationImages =[NSArray arrayWithObjects:
                              
                              [UIImage imageNamed:@"jesus_white_icon2@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon3@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon4@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon5@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon6@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon7@1x.png"],
                              [UIImage imageNamed:@"jesus_white_icon8@1x.png"],
                               [UIImage imageNamed:@"jesus_white_icon9@1x.png"],
                             nil];
    [image24 setAnimationRepeatCount:1];
    image24.animationDuration= 1.0;
    
    image24.contentMode =UIViewAutoresizingFlexibleWidth;
    [image24 startAnimating];
    [self.myview addSubview:image24];
    [self.myview bringSubviewToFront:image24];
    
}
-(void)callglobeimage
{
    
    image23=[UIImageView new];
    UIImage *img3=[UIImage imageNamed:@"glob12@1x.png"];
    
    image23.image=img3;
    image23.frame=CGRectMake((myview.frame.size.width-img3.size.width)/2, 60, img3.size.width, img3.size.height);
    image23.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"glob1@1x.png"],
                              [UIImage imageNamed:@"glob2@1x.png"],
                              [UIImage imageNamed:@"glob3@1x.png"],
                              [UIImage imageNamed:@"glob4@1x.png"],
                              [UIImage imageNamed:@"glob5@1x.png"],
                              [UIImage imageNamed:@"glob6@1x.png"],
                              [UIImage imageNamed:@"glob7@1x.png"],
                              [UIImage imageNamed:@"glob8@1x.png"],
                              [UIImage imageNamed:@"glob9@1x.png"],
                              [UIImage imageNamed:@"glob10@1x.png"],
                              [UIImage imageNamed:@"glob11@1x.png"],
                              [UIImage imageNamed:@"glob12@1x.png"],nil];
    [image23 setAnimationRepeatCount:100];
    image23.animationDuration= 4.0;
    
    image23.contentMode =UIViewAutoresizingFlexibleWidth;
    [image23 startAnimating];
    [self.myview addSubview:image23];
    [self.myview bringSubviewToFront:image23];
}


-(IBAction)gobackview:(id)sender
{
    long3 *backview=[[long3 alloc]initWithNibName:@"long3" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image11.hidden=NO;
    longval4=1;    
    
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
