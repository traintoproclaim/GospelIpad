//
//  long3.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "long3.h"
#import "GospelIpadViewController.h"
#import "long2.h"
#import "long4.h"

@implementation long3
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image24,image26,image28,text;
@synthesize image10,image11,image12,image17,image18,image19,image20,pname,image21,image22,image23,image25;
@synthesize lable1,lable2,lable3,back,lable4,image27;
@synthesize myview;

int longval3=1;

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
    myview.frame=CGRectMake(700, 00, 270, 446);
    myview.contentMode=UIViewContentModeScaleAspectFit;
    myview.backgroundColor=[UIColor clearColor];
    [self.view addSubview:myview];
    
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background@1x.png"]];
    
    lable1.frame=CGRectMake(0, 680, 1024, 90);
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:34.f];
    lable1.titleLabel.numberOfLines=2;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"Firstly, I died on the cross for you." forState:UIControlStateNormal]; 
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
    
    
    image19=[[UIImageView alloc]init];
    
    UIImage *img=[UIImage imageNamed:@"cross_brown@1x.png"];
    image19.image=img;
    image19.frame=CGRectMake((myview.frame.size.width-img.size.width)/2, -60, img.size.width, img.size.height);
    NSLog(@"My Image Size %f,%f,%f,",(myview.frame.size.width-img.size.width)/2,img.size.width,img.size.height);
    [myview addSubview:image19];

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
    switch (longval3)
    {
        case 1: image19.hidden=YES;
            //lb21=CGRectMake(310,12,150,140);
            
            image20=[UIImageView new];
            
            NSData* myEncodedImageData = [ [NSUserDefaults standardUserDefaults] objectForKey:@"image"];
            NSLog(@"image data %@",myEncodedImageData);
            UIImage *img1;
            
            if(myEncodedImageData.length!=0)
            {
                flag=1;
                img1=[UIImage imageWithData:myEncodedImageData];
                
            }else
            {
                lb21=CGRectMake(310,90,250,250);
                flag=0;
                img1=[UIImage imageNamed:@"photo_icon@1x.png"];
                
            } 
            
            
            
            if(flag==1)
            {
               image20.frame=CGRectMake(40,80,200,200);
            image20.image=img1;
                

                
            }else
            {
                
                image20.image=img1;

                image20.frame=CGRectMake((myview.frame.size.width-img1.size.width)/2, 50, img1.size.width, img1.size.height);
            }
            

            
            [self.myview addSubview:image20];
            NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
            pname=[name1  objectForKey:@"text"];
            
            NSDate* date = [NSDate date];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"dd MMM yyyy"];
            NSString *stringFromDate = [formatter stringFromDate:date];
            [formatter release];
            
            NSLog(@"%@", stringFromDate);
            
         
            NSLog(@"Name for long version %@",pname);
            if(stringFromDate.length!=0&&pname.length!=0&&![pname isEqualToString:@"(null)"]&&![pname isEqualToString:@"..."])
            {
                NSLog(@"Length %d",pname.length);
                if(pname.length<=3 )
                {
                    
                    [lable1 setTitle:[NSString stringWithFormat: @"   Secondly I sent %@ on %@ to tell you why                      I died on the cross and how you could be forgiven.",pname,stringFromDate] forState:UIControlStateNormal];
                }
                
                if(pname.length>3&&pname.length<=6)
                {
                    [lable1 setTitle:[NSString stringWithFormat: @"Secondly I sent %@ on %@ to tell you why                      I died on the cross and how you could be forgiven.",pname,stringFromDate] forState:UIControlStateNormal];   
                }
                if(pname.length>6&&pname.length<=15)
                {
                    lable1.titleLabel.numberOfLines=2;
[lable1 setTitle:[NSString stringWithFormat: @"Secondly I sent %@ on %@ to                         tell you why I died on the cross and how you could be forgiven.",pname,stringFromDate] forState:UIControlStateNormal];   
                }
                
            }else
            {[lable1 setTitle:[NSString stringWithFormat: @"    Secondly I sent %@ on %@ to tell you why                                I died on the cross and how you could be forgiven.",pname,stringFromDate] forState:UIControlStateNormal]; 
                
            }
            
            longval3=2;
            
            break;
        case 2: image20.hidden=YES;
            image21=[UIImageView new];
            UIImage *img2=[UIImage imageNamed:@"consince@1x.png"];
         
            image21.image=img2;
            image21.frame=CGRectMake((myview.frame.size.width-img2.size.width)/2, -150, img2.size.width, img2.size.height);
            
            [self.myview addSubview:image21];
          
            [lable1 setTitle:@"Thirdly, I gave you a conscience so that you would know right      from wrong." forState:UIControlStateNormal]; 
            longval3=3;
            
            break;
        case 3:image21.hidden=YES;
            image22=[UIImageView new];
            UIImage *img3=[UIImage imageNamed:@"church_icon@1x.png"];
            
            image22.image=img3;
            image22.frame=CGRectMake((myview.frame.size.width-img3.size.width)/2, 30, img3.size.width, img3.size.height);
            [self.myview addSubview:image22];
            [lable1 setTitle:@"Fourthly, there were some good churches in the area where       you lived." forState:UIControlStateNormal]; 
            longval3=4;
            
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
            
            long4 *ta=[[long4 alloc]initWithNibName:@"long4" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:ta animated:NO];
            [ta release];
            break;
            
            
            break;
    }
}
-(IBAction)gobackview:(id)sender
{
    long2 *backview=[[long2 alloc]initWithNibName:@"long2" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image11.hidden=NO;
    image19.hidden=NO;
    longval3=1;    
    
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
