//
//  GospelIpadAppDelegate.m
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "GospelIpadAppDelegate.h"
#import "Reachability.h"
#import "GospelIpadViewController.h"
#import "JSON.h"
#import "ASIFormDataRequest.h"

#import "GospelIpadViewController.h"

@implementation GospelIpadAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize navController,arr,arr1;
@synthesize username1,username2,username3,username4;
@synthesize email1,email2,email3,email4;
@synthesize id1,id2,id3,id4;
@synthesize containerController;
- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    containerController = [[UIViewController alloc] init];
    value1=0;
    arr1=[[NSArray alloc]init];
    arr1=[[NSUserDefaults standardUserDefaults]objectForKey:@"1234"];   
    arr = [[NSMutableArray alloc]initWithArray:arr1];
    
    NSLog(@"Array count %d",arr1.count);
    [arr addObjectsFromArray:arr1];

    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
[[UIApplication sharedApplication]setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    
    
    self.viewController = [[[GospelIpadViewController alloc] initWithNibName:@"GospelIpadViewController" bundle:nil] autorelease];
    navController=[[UINavigationController alloc]initWithRootViewController:self.viewController];
    navController.navigationBar.hidden=YES;
    self.window.rootViewController = navController;
    [self.window addSubview:navController.view];
    
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {  
        NSUserDefaults *valu0 = [NSUserDefaults standardUserDefaults];
        [valu0 setInteger:0 forKey:@"countemail"]; 
        
        NSUserDefaults *valu01 = [NSUserDefaults standardUserDefaults];
        [valu01 setInteger:0 forKey:@"countercountry"]; 
        
        NSLog(@"No internet connection!"); 
        NSUserDefaults *valu1 = [NSUserDefaults standardUserDefaults];
        [valu1 setInteger:10 forKey:@"countemail1"]; 
        NSUserDefaults *valu2 = [NSUserDefaults standardUserDefaults];
        [valu2 setInteger:10 forKey:@"countemail2"]; 
        
        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
        [valu3 setInteger:10 forKey:@"countemail3"]; 
        
        NSUserDefaults *valu4 = [NSUserDefaults standardUserDefaults];
        [valu4 setInteger:10 forKey:@"countemail4"]; 
        NSUserDefaults *valu5 = [NSUserDefaults standardUserDefaults];
        [valu5 setInteger:10 forKey:@"countemail5"]; 
        NSUserDefaults *valu6 = [NSUserDefaults standardUserDefaults];
        [valu6 setInteger:10 forKey:@"countemail6"]; 
        
        NSUserDefaults *valu7 = [NSUserDefaults standardUserDefaults];
        [valu7 setInteger:10 forKey:@"countemail7"]; 
        
        NSUserDefaults *valu8 = [NSUserDefaults standardUserDefaults];
        [valu8 setInteger:10 forKey:@"countemail8"]; 
        NSUserDefaults *valu9 = [NSUserDefaults standardUserDefaults];
        [valu9 setInteger:10 forKey:@"countemail9"]; 
        NSUserDefaults *valu10 = [NSUserDefaults standardUserDefaults];
        [valu10 setInteger:10 forKey:@"countemail10"]; 
        
        NSUserDefaults *valu11 = [NSUserDefaults standardUserDefaults];
        [valu11 setInteger:10 forKey:@"countemail11"]; 
        
        NSUserDefaults *valu12 = [NSUserDefaults standardUserDefaults];
        [valu12 setInteger:10 forKey:@"countemail12"]; 
        
        NSUserDefaults *valu15 = [NSUserDefaults standardUserDefaults];
        [valu15 setInteger:10 forKey:@"countemail13"]; 
        NSUserDefaults *valu16 = [NSUserDefaults standardUserDefaults];
        [valu16 setInteger:10 forKey:@"countemail14"]; 
        
        NSUserDefaults *valu17 = [NSUserDefaults standardUserDefaults];
        [valu17 setInteger:10 forKey:@"countemail15"]; 
        
        NSUserDefaults *valu18 = [NSUserDefaults standardUserDefaults];
        [valu18 setInteger:10 forKey:@"countemail16"]; 
        NSUserDefaults *valu19 = [NSUserDefaults standardUserDefaults];
        [valu19 setInteger:10 forKey:@"countemail17"]; 
        NSUserDefaults *valu110 = [NSUserDefaults standardUserDefaults];
        [valu110 setInteger:10 forKey:@"countemail18"]; 
        
        NSUserDefaults *valu111 = [NSUserDefaults standardUserDefaults];
        [valu111 setInteger:10 forKey:@"countemail19"]; 
        
        NSUserDefaults *valu112 = [NSUserDefaults standardUserDefaults];
        [valu112 setInteger:10 forKey:@"countemail20"]; 
        
        
        NSUserDefaults *new = [NSUserDefaults standardUserDefaults];
        [new setInteger:10 forKey:@"countercountrymail1"]; 
        NSUserDefaults *new1 = [NSUserDefaults standardUserDefaults];
        [new1 setInteger:10 forKey:@"countercountrymail2"]; 
        NSUserDefaults *new2 = [NSUserDefaults standardUserDefaults];
        [new2 setInteger:10 forKey:@"countercountrymail3"]; 
        NSUserDefaults *new3 = [NSUserDefaults standardUserDefaults];
        [new3 setInteger:10 forKey:@"countercountrymail4"]; 
        
        
        
        
        
    }else
    {     
        
        [self value];
        [self value1];
        [self value2];
        [self value3];
        [self value4];
        [self countryNumber];
        NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
        NSInteger logval= [valu integerForKey:@"LoginSuccess"];
        
        if(logval==1)
        {
            UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"Offline data has been sent" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert11 show];
            [alert11 release];
            NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
            [valu setInteger:0 forKey:@"LoginSuccess"];
            
            
            
            NSUserDefaults *valu0 = [NSUserDefaults standardUserDefaults];
            [valu0 setInteger:0 forKey:@"countemail"]; 
            
            NSUserDefaults *valu01 = [NSUserDefaults standardUserDefaults];
            [valu01 setInteger:0 forKey:@"countercountry"]; 
            
            NSLog(@"No internet connection!"); 
            NSUserDefaults *valu1 = [NSUserDefaults standardUserDefaults];
            [valu1 setInteger:10 forKey:@"countemail1"]; 
            NSUserDefaults *valu2 = [NSUserDefaults standardUserDefaults];
            [valu2 setInteger:10 forKey:@"countemail2"]; 
            
            NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
            [valu3 setInteger:10 forKey:@"countemail3"]; 
            
            NSUserDefaults *valu4 = [NSUserDefaults standardUserDefaults];
            [valu4 setInteger:10 forKey:@"countemail4"]; 
            NSUserDefaults *valu5 = [NSUserDefaults standardUserDefaults];
            [valu5 setInteger:10 forKey:@"countemail5"]; 
            NSUserDefaults *valu6 = [NSUserDefaults standardUserDefaults];
            [valu6 setInteger:10 forKey:@"countemail6"]; 
            
            NSUserDefaults *valu7 = [NSUserDefaults standardUserDefaults];
            [valu7 setInteger:10 forKey:@"countemail7"]; 
            
            NSUserDefaults *valu8 = [NSUserDefaults standardUserDefaults];
            [valu8 setInteger:10 forKey:@"countemail8"]; 
            NSUserDefaults *valu9 = [NSUserDefaults standardUserDefaults];
            [valu9 setInteger:10 forKey:@"countemail9"]; 
            NSUserDefaults *valu10 = [NSUserDefaults standardUserDefaults];
            [valu10 setInteger:10 forKey:@"countemail10"]; 
            
            NSUserDefaults *valu11 = [NSUserDefaults standardUserDefaults];
            [valu11 setInteger:10 forKey:@"countemail11"]; 
            
            NSUserDefaults *valu12 = [NSUserDefaults standardUserDefaults];
            [valu12 setInteger:10 forKey:@"countemail12"]; 
            
            NSUserDefaults *valu15 = [NSUserDefaults standardUserDefaults];
            [valu15 setInteger:10 forKey:@"countemail13"]; 
            NSUserDefaults *valu16 = [NSUserDefaults standardUserDefaults];
            [valu16 setInteger:10 forKey:@"countemail14"]; 
            
            NSUserDefaults *valu17 = [NSUserDefaults standardUserDefaults];
            [valu17 setInteger:10 forKey:@"countemail15"]; 
            
            NSUserDefaults *valu18 = [NSUserDefaults standardUserDefaults];
            [valu18 setInteger:10 forKey:@"countemail16"]; 
            NSUserDefaults *valu19 = [NSUserDefaults standardUserDefaults];
            [valu19 setInteger:10 forKey:@"countemail17"]; 
            NSUserDefaults *valu110 = [NSUserDefaults standardUserDefaults];
            [valu110 setInteger:10 forKey:@"countemail18"]; 
            
            NSUserDefaults *valu111 = [NSUserDefaults standardUserDefaults];
            [valu111 setInteger:10 forKey:@"countemail19"]; 
            
            NSUserDefaults *valu112 = [NSUserDefaults standardUserDefaults];
            [valu112 setInteger:10 forKey:@"countemail20"]; 
            
            
            NSUserDefaults *new = [NSUserDefaults standardUserDefaults];
            [new setInteger:10 forKey:@"countercountrymail1"]; 
            NSUserDefaults *new1 = [NSUserDefaults standardUserDefaults];
            [new1 setInteger:10 forKey:@"countercountrymail2"]; 
            NSUserDefaults *new2 = [NSUserDefaults standardUserDefaults];
            [new2 setInteger:10 forKey:@"countercountrymail3"]; 
            NSUserDefaults *new3 = [NSUserDefaults standardUserDefaults];
            [new3 setInteger:10 forKey:@"countercountrymail4"]; 
            

            
            
        }
        
    }
    
    NSLog(@"Array count %d",arr.count);
    NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
    [version setInteger:0 forKey:@"version"];

    
    [self.window makeKeyAndVisible];
    return YES;
}


-(void)value
{
    value1=0;
    value=1;
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    NSInteger str=[valu integerForKey:@"offline"];
    NSLog(@"OFF Line Mode : %d",str);
    
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    NSInteger str4=[valu3 integerForKey:@"id5"];
    
    NSUserDefaults *valu1 = [NSUserDefaults standardUserDefaults];
    newcount=[valu1 integerForKey:@"countemail1"];
    NSUserDefaults *valu11 = [NSUserDefaults standardUserDefaults];
    newcount1=[valu11 integerForKey:@"countemail2"];
    NSUserDefaults *valu12 = [NSUserDefaults standardUserDefaults];
    newcount2=[valu12 integerForKey:@"countemail3"];
    NSUserDefaults *valu13= [NSUserDefaults standardUserDefaults];
    newcount3=[valu13 integerForKey:@"countemail4"];
    NSLog(@"count %d",newcount);
    NSLog(@"count %d",newcount1);
    NSLog(@"count %d",newcount2);
    NSLog(@"count %d",newcount3);
    
    
    
    
    if(newcount==0&&str==1&&str4==5) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user%d",newcount]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email%d",newcount]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"5" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail1"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
                
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    if(newcount1==1&&str==1&&str4==5) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user%d",newcount1]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email%d",newcount1]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"5" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail2"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount2==2&&str==1&&str4==5) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user%d",newcount2]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email%d",newcount2]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"5" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail3"];
                
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount3==3&&str==1&&str4==5) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user%d",newcount3]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email%d",newcount3]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"5" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail4"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
            
        }
        
    }
    
    
    
    
}
-(void)value1
{
    value=1;
    value1=0;
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    NSInteger str=[valu integerForKey:@"offline"];
    
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    NSInteger str4=[valu3 integerForKey:@"id1"];
    
    NSUserDefaults *valu1 = [NSUserDefaults standardUserDefaults];
    newcount=[valu1 integerForKey:@"countemail5"];
    NSUserDefaults *valu11 = [NSUserDefaults standardUserDefaults];
    newcount1=[valu11 integerForKey:@"countemail6"];
    NSUserDefaults *valu12 = [NSUserDefaults standardUserDefaults];
    newcount2=[valu12 integerForKey:@"countemail7"];
    NSUserDefaults *valu13= [NSUserDefaults standardUserDefaults];
    newcount3=[valu13 integerForKey:@"countemail8"];
    NSLog(@"count %d",newcount);
    NSLog(@"count %d",newcount1);
    NSLog(@"count %d",newcount2);
    NSLog(@"count %d",newcount3);    
    
    if(newcount==0&&str==1&&str4==1) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user5%d",newcount]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email5%d",newcount]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"1" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail5"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    if(newcount1==1&&str==1&&str4==1) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user6%d",newcount1]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email6%d",newcount1]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"1" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail6"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount2==2&&str==1&&str4==1) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user7%d",newcount2]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email7%d",newcount2]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"1" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail7"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount3==3&&str==1&&str4==1) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user8%d",newcount3]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email8%d",newcount3]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"1" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail8"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
            
        }
        
    }
    
}
-(void)value2
{
    
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    NSInteger str=[valu integerForKey:@"offline"];
    
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    NSInteger str4=[valu3 integerForKey:@"id2"];
    
    NSUserDefaults *valu14 = [NSUserDefaults standardUserDefaults];
    newcount=[valu14 integerForKey:@"countemail9"];
    NSUserDefaults *valu11 = [NSUserDefaults standardUserDefaults];
    newcount1=[valu11 integerForKey:@"countemail10"];
    NSUserDefaults *valu12 = [NSUserDefaults standardUserDefaults];
    newcount2=[valu12 integerForKey:@"countemail11"];
    NSUserDefaults *valu13= [NSUserDefaults standardUserDefaults];
    newcount3=[valu13 integerForKey:@"countemail12"];
    NSLog(@"count %d",newcount);
    NSLog(@"count %d",newcount1);
    NSLog(@"count %d",newcount2);
    NSLog(@"count %d",newcount3);    
    
    if(newcount==0&&str==1&&str4==2) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user9%d",newcount]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email9%d",newcount]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"2" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail9"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    if(newcount1==1&&str==1&&str4==2) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user10%d",newcount1]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email10%d",newcount1]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"2" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail10"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount2==2&&str==1&&str4==2) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user11%d",newcount2]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email11%d",newcount2]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"2" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail11"];
                
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount3==3&&str==1&&str4==2) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user12%d",newcount3]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email12%d",newcount3]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"2" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail12"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
            
        }
        
    }
}

-(void)value3
{
    
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    NSInteger str=[valu integerForKey:@"offline"];
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    NSInteger str4=[valu3 integerForKey:@"id3"];
    NSUserDefaults *valu14 = [NSUserDefaults standardUserDefaults];
    newcount=[valu14 integerForKey:@"countemail13"];
    NSUserDefaults *valu11 = [NSUserDefaults standardUserDefaults];
    newcount1=[valu11 integerForKey:@"countemail14"];
    NSUserDefaults *valu12 = [NSUserDefaults standardUserDefaults];
    newcount2=[valu12 integerForKey:@"countemail15"];
    NSUserDefaults *valu13= [NSUserDefaults standardUserDefaults];
    newcount3=[valu13 integerForKey:@"countemail16"];
    NSLog(@"count %d",newcount);
    NSLog(@"count %d",newcount1);
    NSLog(@"count %d",newcount2);
    NSLog(@"count %d",newcount3);    
    
    if(newcount==0&&str==1&&str4==3) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:@"user130"];
        NSLog(@"%@",str1);
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:@"email130"];
        NSLog(@"%@",str2);
        
        NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
        NSString *str3=[valu3 objectForKey:@"email1130"];
        NSLog(@"%@",str3);
        
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"3" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        [request1 setPostValue:str3 forKey:@"ccemail"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail13"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    if(newcount1==1&&str==1&&str4==3) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:@"user141"];
        NSLog(@"%@",str1);
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:@"email141"];
        NSLog(@"%@",str2);
        
        NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
        NSString *str3=[valu3 objectForKey:@"email1141"];
        NSLog(@"%@",str3);
        
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"3" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        [request1 setPostValue:str3 forKey:@"ccemail"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail14"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount2==2&&str==1&&str4==3) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:@"user152"];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:@"email152"];
        
        NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
        NSString *str3=[valu3 objectForKey:@"email1152"];
        
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"3" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        [request1 setPostValue:str3 forKey:@"ccemail"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail15"];
                
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount3==3&&str==1&&str4==3) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:@"user163"];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:@"email163"];
        
        NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
        NSString *str3=[valu3 objectForKey:@"email1163"];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"3" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        [request1 setPostValue:str3 forKey:@"ccemail"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail16"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
            
        }
        
    }
    
}
-(void)value4
{
    
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    NSInteger str=[valu integerForKey:@"offline"];
    
    NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
    NSInteger str4=[valu3 integerForKey:@"id4"];
    NSUserDefaults *valu14 = [NSUserDefaults standardUserDefaults];
    newcount=[valu14 integerForKey:@"countemail17"];
    NSUserDefaults *valu11 = [NSUserDefaults standardUserDefaults];
    newcount1=[valu11 integerForKey:@"countemail18"];
    NSUserDefaults *valu12 = [NSUserDefaults standardUserDefaults];
    newcount2=[valu12 integerForKey:@"countemail19"];
    NSUserDefaults *valu13= [NSUserDefaults standardUserDefaults];
    newcount3=[valu13 integerForKey:@"countemail20"];
    NSLog(@"count %d",newcount);
    NSLog(@"count %d",newcount1);
    NSLog(@"count %d",newcount2);
    NSLog(@"count %d",newcount3);    
    
    if(newcount==0&&str==1&&str4==4) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user17%d",newcount]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email17%d",newcount]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"4" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail17"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    if(newcount1==1&&str==1&&str4==4) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user18%d",newcount1]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email18%d",newcount1]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"4" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail18"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount2==2&&str==1&&str4==4) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user19%d",newcount2]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email19%d",newcount2]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"4" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail19"];
                
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
        }
        
    }
    
    
    
    if(newcount3==3&&str==1&&str4==4) 
    {
        //[self inwitdownloadhstring];
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:[NSString stringWithFormat:@"user20%d",newcount3]];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:[NSString stringWithFormat:@"email20%d",newcount3]];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Sendmail" forKey:@"Command"];
        
        [request1 setPostValue:str2 forKey:@"email"];
        [request1 setPostValue:@"4" forKey:@"sub"];
        [request1 setPostValue:str1 forKey:@"name"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countemail20"];
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                
            }else
            { 
                NSLog(@"Mail not send");
                
            }
            
            
        }
        
    }
}

-(void)countryNumber
{
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:1 forKey:@"offline"];
    
    NSInteger str=[valu integerForKey:@"offline"];
    
    NSUserDefaults *valu14 = [NSUserDefaults standardUserDefaults];
    newcount=[valu14 integerForKey:@"countercountrymail1"];
    NSUserDefaults *valu11 = [NSUserDefaults standardUserDefaults];
    newcount1=[valu11 integerForKey:@"countercountrymail2"];
    NSUserDefaults *valu12 = [NSUserDefaults standardUserDefaults];
    newcount2=[valu12 integerForKey:@"countercountrymail3"];
    NSUserDefaults *valu13= [NSUserDefaults standardUserDefaults];
    newcount3=[valu13 integerForKey:@"countercountrymail4"];
    NSLog(@"count %d",newcount);
    NSLog(@"count %d",newcount1);
    NSLog(@"count %d",newcount2);
    NSLog(@"count %d",newcount3);    
    
    
    if(newcount==0&&str==1) 
    {
        
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:@"no1"];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:@"country1"];
        
        
        NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
        NSString *str3=[valu3 objectForKey:@"no2"];
        
        
        NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
        NSString *str4=[valu4 objectForKey:@"country2"];
        
        NSUserDefaults *valu5= [NSUserDefaults standardUserDefaults];
        NSString *str5=[valu5 objectForKey:@"no3"];
        
        
        NSUserDefaults *valu6= [NSUserDefaults standardUserDefaults];
        NSString *str6=[valu6 objectForKey:@"country3"];
        
        NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
        NSString *str7=[valu7 objectForKey:@"offlineuser1"];
        
         NSLog(@"value1 :%@",str1);
         NSLog(@"value2 :%@",str3);
         NSLog(@"value3 :%@",str5);
        
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Countrycount" forKey:@"Command"];
        
        [request1 setPostValue:str7 forKey:@"user_name"];
        [request1 setPostValue:str2 forKey:@"country_name1"];
        [request1 setPostValue:str4 forKey:@"country_name2"];
        [request1 setPostValue:str6 forKey:@"country_name3"];
        [request1 setPostValue:str1 forKey:@"country_nos1"];
        [request1 setPostValue:str3 forKey:@"country_nos2"];
        [request1 setPostValue:str5 forKey:@"country_nos3"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countercountrymail1"];
                
            }  
            
            
        }  
    }
    
    if(newcount1==1&&str==1) 
    {
        
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:@"no4"];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:@"country4"];
        
        
        NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
        NSString *str3=[valu3 objectForKey:@"no5"];
        
        
        NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
        NSString *str4=[valu4 objectForKey:@"country5"];
        
        NSUserDefaults *valu5= [NSUserDefaults standardUserDefaults];
        NSString *str5=[valu5 objectForKey:@"no6"];
        
        
        NSUserDefaults *valu6= [NSUserDefaults standardUserDefaults];
        NSString *str6=[valu6 objectForKey:@"country6"];
        
        NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
        NSString *str7=[valu7 objectForKey:@"offlineuser2"];
        
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Countrycount" forKey:@"Command"];
        
        [request1 setPostValue:str7 forKey:@"user_name"];
        [request1 setPostValue:str2 forKey:@"country_name1"];
        [request1 setPostValue:str4 forKey:@"country_name2"];
        [request1 setPostValue:str6 forKey:@"country_name3"];
        [request1 setPostValue:str1 forKey:@"country_nos1"];
        [request1 setPostValue:str3 forKey:@"country_nos2"];
        [request1 setPostValue:str5 forKey:@"country_nos3"];
        NSLog(@"value1 :%@",str1);
        NSLog(@"value2 :%@",str3);
        NSLog(@"value3 :%@",str5);
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countercountrymail2"];
            }  
            
            
        }  
    }
    if(newcount2==2&&str==1) 
    {
        
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:@"no7"];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:@"country7"];
        
        
        NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
        NSString *str3=[valu3 objectForKey:@"no8"];
        
        
        NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
        NSString *str4=[valu4 objectForKey:@"country8"];
        
        NSUserDefaults *valu5= [NSUserDefaults standardUserDefaults];
        NSString *str5=[valu5 objectForKey:@"no9"];
        
        
        NSUserDefaults *valu6= [NSUserDefaults standardUserDefaults];
        NSString *str6=[valu6 objectForKey:@"country9"];
        
        NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
        NSString *str7=[valu7 objectForKey:@"offlineuser3"];
        
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Countrycount" forKey:@"Command"];
        
        [request1 setPostValue:str7 forKey:@"user_name"];
        [request1 setPostValue:str2 forKey:@"country_name1"];
        [request1 setPostValue:str4 forKey:@"country_name2"];
        [request1 setPostValue:str6 forKey:@"country_name3"];
        [request1 setPostValue:str1 forKey:@"country_nos1"];
        [request1 setPostValue:str3 forKey:@"country_nos2"];
        [request1 setPostValue:str5 forKey:@"country_nos3"];
        NSLog(@"value1 :%@",str1);
        NSLog(@"value2 :%@",str3);
        NSLog(@"value3 :%@",str5);
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countercountrymail3"];
            }  
            
            
        }  
    }
    
    if(newcount3==3&&str==1) 
    {
        
        NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
        NSString *str1=[valu1 objectForKey:@"no10"];
        
        NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
        NSString *str2=[valu2 objectForKey:@"country10"];
        
        
        NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
        NSString *str3=[valu3 objectForKey:@"no11"];
        
        
        NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
        NSString *str4=[valu4 objectForKey:@"country11"];
        
        NSUserDefaults *valu5= [NSUserDefaults standardUserDefaults];
        NSString *str5=[valu5 objectForKey:@"no12"];
        
        
        NSUserDefaults *valu6= [NSUserDefaults standardUserDefaults];
        NSString *str6=[valu6 objectForKey:@"country12"];
        
        NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
        NSString *str7=[valu7 objectForKey:@"offlineuser4"];
        
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Countrycount" forKey:@"Command"];
        
        [request1 setPostValue:str7 forKey:@"user_name"];
        [request1 setPostValue:str2 forKey:@"country_name1"];
        [request1 setPostValue:str4 forKey:@"country_name2"];
        [request1 setPostValue:str6 forKey:@"country_name3"];
        [request1 setPostValue:str1 forKey:@"country_nos1"];
        [request1 setPostValue:str3 forKey:@"country_nos2"];
        [request1 setPostValue:str5 forKey:@"country_nos3"];
        NSLog(@"value1 :%@",str1);
        NSLog(@"value2 :%@",str3);
        NSLog(@"value3 :%@",str5);
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSLog(@"My status :%@",loginstr);
            
            if([loginstr isEqualToString:@"Success"])
            {
                NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
                [valu setInteger:1 forKey:@"LoginSuccess"];
                NSLog(@"Send Mail Success");
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:10 forKey:@"countercountrymail4"];
            }  
            
            
        }  
    }
    
    
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
