//
//  MailView_1.m
//  GospelIpad
//
//  Created by vibha on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "MailView_1.h"
#import "donation.h"
#import "GospelIpadViewController.h"
#import "JSON.h"
#import "ASIFormDataRequest.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "changeloginView.h"
#import "welldone.h"
#import "congoview.h"
#import "ChangeLoginView.h"

@implementation MailView_1
@synthesize list,customView,contactArray,tableview,back,day,datePicker,datebtn,button,list1,list2,country,numbers,no1,no2,no3,contactArray1,tableview1,send,loginchange,qlb;
int count;


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
    contactArray=[[NSMutableArray alloc]initWithObjects:@"Afghanistan",@"Albania",@"Algeria",@"America",@"Andorra",@"Angola",@"Anguilla",@"Antigua and Barbuda",@"Argentina",@"Armenia",@"Aruba",@"Australia",@"Austria",@"Azerbaijan",@"Azores",@"Bahamas",@"Bahrain",@"Bangladesh",@"Barbados",@"Belarus",@"Belgium",@"Belize",@"Benin",@"Bermuda",@"Bhutan",@"Bolivia",@"Bosnia Herzegovina",@"Botswana",@"Brazil",@"British Virgin Islan",@"Brunei Darussalam",@"Bulgaria",@"Burkina Faso",@"Burundi",@"Cambodia",@"Cameroon",@"Canada",@"Cape Verde",@"Cayman Islands",@"Central African Repu",@"Chad",@"Chile",@"China",@"Colombia",@"Comoros",@"Congo",@"Cook Islands",@"Corsica",@"Costa Rica",@"Cote d' 'Ivoire (Ivory",@"Croatia",@"Cyprus",@"Czech Republic",@"Denmark",@"Djibouti",@"Dominica",@"Dominican Republic",@"Ecuador",@"Egypt",@"El Salvador",@"England",@"Equatorial Guinea",@"Eritrea",@"Estonia",@"Ethiopia",@"Falkland Islands",@"Faroe Islands",@"Fiji",@"Finland",@"France (inc. Monaco)",@"French Guiana",@"French Polynesia",@"Gabon",@"Gambia",@"Georgia",@"Germany",@"Ghana",@"Gibraltar",@"Great Britain and No",@"Greece",@"Greenland",@"Grenada",@"Guadeloupe",@"Guatemala",@"Guinea",@"Guinea Bissau",@"Guyana",@"Haiti",@"Holland",@"Honduras",@"Hong Kong",@"Hungary",@"Iceland",@"India",@"Indonesia",@"Iran",@"Iraq",@"Ireland",@"Israel",@"Italy",@"Jamaica",@"japan",@"jordan",@"Kazakhstan",@"Kenya",@"Kiribati",@"Korea (North)",@"Korea (South)",@"Kuwait",@"Kyrgyzstan",@"Laos",@"Latvia",@"Lebanon",@"Lesotho",@"Liberia",@"Libya",@"Liechtenstein",@"Lithuania",@"Luxembourg",@"Macao",@"Macedonia",@"Madagascar",@"Madeira Islands",@"Malawi",@"Malaysia",@"Maldives",@"Mali",@"Malta",@"Marshall Islands",@"Martinique",@"Mauritania",@"Mauritius",@"Mexico",@"Moldova",@"Mongolia",@"Montserrat",@"Morocco",@"Mozambique",@"Myanmar",@"Namibia",@"Nauru",@"Nepal",@"Netherlands",@"Netherlands Antilles",@"New Caledonia",@"New Zealand", @"Nicaragua",@"Niger",@"Nigeria",@"Norway",@"Noumea",@"Nuie",@"Oman",@"Pakistan",@"Panama",@"Papua New Guinea",@"Paraguay",@"Peru",@"Philippines",@"Pitcairn Island",@"Poland",@"Portugal",@"Qatar",@"Republic of",@"Reunion",@"Romania",@"Russia",@"Rwanda",@"Saint Helena",@"Saint Lucia",@"Saint Pierre and Miq",@"Saint Vincent and th",@"Samoa",@"San Marino",@"SaoTome and Principe",@"Saudi Arabia",@"Scotland",@"Senegal",@"Serbia Monteneg(Yugo", @"Seychelles",@"Sierra Leone",@"Singapore",@"Slovak Republic",@"Slovenia",@"Solomon Islands",@"Somalia",@"South Africa",@"Spain",@"Sri Lanka",@"St.Kitts and Nevis",@"Sudan",@"Suriname",@"Swaziland",@"Sweden",@"Switzerland",@"Syria",@"Tahiti",@"Taiwan",@"Tajikistan",@"Tanzania",@"Thailand",@"Togo",@"Tonga",@"Trinidad and Tobago",@"Trist and aCunha",@"Tunisia",@"Turkey",@"Turkmenistan",@"Turks and Caicos Isl",@"Tuvalu",@"Uganda",@"Ukraine",@"United Arab Emirates",@"United States",@"Uruguay",@"Uzbekistan",@"Vanuatu",@"Vatican City",@"Venezuela",@"Vietnam",@"Wallis and Futuna Is",@"Western Samoa",@"Yemen",@"Yugoslavia",@"Zaire",@"Zambia",@"Zimbabwe",nil];
    
    contactArray1=[[NSMutableArray alloc]initWithObjects:@"1",
                   @"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",nil];
    
    tableview=[[UITableView alloc]init];
    tableview.dataSource=self;
    tableview.delegate=self;
    
    tableview1=[[UITableView alloc]init];
    tableview1.dataSource=self;
    tableview1.delegate=self;
    
    day=[[UILabel alloc]init];
    day.frame=CGRectMake(150, 140, 300, 50);
    day.text=@"On this day:";
    day.font= [UIFont fontWithName:@"Opificio" size:40.f];
    day.textColor=[UIColor blackColor];
    day.backgroundColor=[UIColor clearColor];
    [self.view addSubview:day];
    
    country=[[UILabel alloc]init];
    country.frame=CGRectMake(550, 200, 400, 44);
    country.text=@"Country of Origin:";
    country.font= [UIFont fontWithName:@"Opificio" size:40.f];
    country.textColor=[UIColor blackColor];
    country.backgroundColor=[UIColor clearColor];
    [self.view addSubview:country];
    
    numbers=[[UILabel alloc]init];
    numbers.frame=CGRectMake(150, 200, 400, 50);
    numbers.text=@"Number Reached:";
    numbers.font= [UIFont fontWithName:@"Opificio" size:40.f];
    numbers.textColor=[UIColor blackColor];
    numbers.backgroundColor=[UIColor clearColor];
    [self.view addSubview:numbers];
    
    
    
        loginchange.frame=CGRectMake(80, 90, 400, 50);
    loginchange.titleLabel.font= [UIFont fontWithName:@"Opificio" size:40.f];
    
    datebtn.frame=CGRectMake(400, 140, 300, 50);
     datebtn.font= [UIFont fontWithName:@"Opificio" size:44.f];
    NSDate* date = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd-MM-yyyy"];
    NSString *stringFromDate = [formatter stringFromDate:date];
    [formatter release];
    
    NSLog(@"%@", stringFromDate);
    datebtn.text=stringFromDate;
    
    NSUserDefaults *v = [NSUserDefaults standardUserDefaults];
    NSString *loginstr1=[v objectForKey:@"country"];
    list.frame=CGRectMake(570, 270, 302, 60);
    
    UIImage *lg11=[UIImage imageNamed:@"counrtybtn@1x.png"];
    
    
    if(loginstr1.length!=0&&loginstr1!=nil)
    {
        [list setTitle:loginstr1 forState:UIControlStateNormal];  
    }else
    {
        [list setTitle:@"Afghanistan" forState:UIControlStateNormal];
    }
    list.titleLabel.textColor=[UIColor blackColor];
    [list setBackgroundImage:lg11 forState:UIControlStateNormal];
    list.backgroundColor=[UIColor clearColor];
    list.titleLabel.backgroundColor=[UIColor clearColor];
    list.titleLabel.font= [UIFont fontWithName:@"Opificio" size:25.f];
    list.contentHorizontalAlignment=UIControlContentHorizontalAlignmentCenter;
    [list addTarget:self action:@selector(addlistonmenu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:list];
    
    
    list1.frame=CGRectMake(570, 380, 302, 60);
    UIImage *lg12=[UIImage imageNamed:@"counrtybtn@1x.png"];
    if(loginstr1.length!=0&&loginstr1!=nil)
    {
        [list1 setTitle:loginstr1 forState:UIControlStateNormal];  
    }else
    {
        [list1 setTitle:@"Afghanistan" forState:UIControlStateNormal];
    }
    list1.titleLabel.textColor=[UIColor blackColor];
    [list1 setBackgroundImage:lg12 forState:UIControlStateNormal];
    list1.backgroundColor=[UIColor clearColor];
    list1.titleLabel.backgroundColor=[UIColor clearColor];
    list1.titleLabel.textAlignment=UITextAlignmentLeft;
    list1.titleLabel.font=[UIFont systemFontOfSize:15.f];
    list1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:25.f];
    list1.contentHorizontalAlignment=UIControlContentHorizontalAlignmentCenter;
    [list1 addTarget:self action:@selector(addlistonmenu1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:list1];
    
    
    
    list2.frame=CGRectMake(570, 490, 302, 60);
    UIImage *lg13=[UIImage imageNamed:@"counrtybtn@1x.png"];
    if(loginstr1.length!=0&&loginstr1!=nil)
    {
        [list2 setTitle:loginstr1 forState:UIControlStateNormal];  
    }else
    {
        [list2 setTitle:@"Afghanistan" forState:UIControlStateNormal];
    }
    list2.titleLabel.textColor=[UIColor blackColor];
    
    [list2 setBackgroundImage:lg13 forState:UIControlStateNormal];
    list2.titleLabel.backgroundColor=[UIColor clearColor];
    list2.backgroundColor=[UIColor clearColor];
    list2.titleLabel.font= [UIFont fontWithName:@"Opificio" size:25.f];
    list2.contentHorizontalAlignment=UIControlContentHorizontalAlignmentCenter;
    [list2 addTarget:self action:@selector(addlistonmenu2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:list2];
    
    
    no1.frame=CGRectMake(230, 270, 155, 60);
    UIImage *lg=[UIImage imageNamed:@"numberbtn@1x.png"];
    [no1 setTitle:@"0" forState:UIControlStateNormal];
    no1.titleLabel.textColor=[UIColor blackColor];
    [no1 setBackgroundImage:lg forState:UIControlStateNormal];
    no1.backgroundColor=[UIColor clearColor];
    no1.titleLabel.backgroundColor=[UIColor clearColor];
    no1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:25.f];
    no1.contentHorizontalAlignment=UIControlContentHorizontalAlignmentCenter;
    [no1 addTarget:self action:@selector(addnumberonmenu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:no1];
    
    no2.frame=CGRectMake(230, 380, 155, 60);
    UIImage *lg1=[UIImage imageNamed:@"numberbtn@1x.png"];
    [no2 setTitle:@"0" forState:UIControlStateNormal];
    no2.titleLabel.textColor=[UIColor blackColor];
    [no2 setBackgroundImage:lg1 forState:UIControlStateNormal];
    no2.backgroundColor=[UIColor clearColor];
    no2.titleLabel.backgroundColor=[UIColor clearColor];
    no2.titleLabel.font= [UIFont fontWithName:@"Opificio" size:25.f];
    no2.contentHorizontalAlignment=UIControlContentHorizontalAlignmentCenter;
    [no2 addTarget:self action:@selector(addnumberonmenu1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:no2];
    
    
    no3.frame=CGRectMake(230, 490, 155, 60);
    UIImage *lg3=[UIImage imageNamed:@"numberbtn@1x.png"];
    [no3 setTitle:@"0" forState:UIControlStateNormal];
    no3.titleLabel.textColor=[UIColor blackColor];
    [no3 setBackgroundImage:lg3 forState:UIControlStateNormal];
    no3.titleLabel.backgroundColor=[UIColor clearColor];
    no3.backgroundColor=[UIColor clearColor];
    no3.titleLabel.font= [UIFont fontWithName:@"Opificio" size:25.f];
    no3.contentHorizontalAlignment=UIControlContentHorizontalAlignmentCenter;
    [no3 addTarget:self action:@selector(addnumberonmenu2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:no3];
    
    
    send=[UIButton buttonWithType:UIButtonTypeCustom];
    send.frame=CGRectMake(800, 600, 200,60);
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateNormal];
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateHighlighted];
    [send setImage:[UIImage imageNamed:@"send_btn@1x.png"] forState:UIControlStateSelected];
    [send addTarget:self action:@selector(sendAction:) forControlEvents:UIControlEventTouchUpInside];
    [send setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:send];
    [self.view bringSubviewToFront:send];
    

}
-(void)loading
{
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.labelText = @"Loading Page..";
    
    [self.view addSubview:HUD];
    timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self 
                                           selector:@selector(dismissHUD:) userInfo:nil 
                                            repeats:NO];
    
}
- (void)dismissHUD:(id)arg {
    
    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    HUD = nil;
    
    alert11=[[UIAlertView alloc] initWithTitle:@"Thank you" message:@"Your results have been entered. Go to www.traintoproclaim.com to see your results and what is happening around the world." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert11 show];
    [alert11 release];
    congoview *ta=[[congoview alloc]initWithNibName:@"congoview" bundle:[NSBundle mainBundle]];            
    [self.navigationController pushViewController:ta animated:NO];
    [ta release]; 
    
    
}
-(IBAction)changelogin:(id)sender
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    { 
        UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert1 show];
        [alert1 release];
    }else
    {
        ChangeLoginView *ta=[[ChangeLoginView alloc]initWithNibName:@"ChangeLoginView" bundle:[NSBundle mainBundle]];            
        [self.navigationController pushViewController:ta animated:NO];
        [ta release];  
    }
    
}
-(IBAction)sendAction:(id)sender
{
    if([no1.titleLabel.text isEqualToString:@"0"]&&[no2.titleLabel.text isEqualToString:@"0"]&&[no3.titleLabel.text isEqualToString:@"0"])
    {
        congoview *ta=[[congoview alloc]initWithNibName:@"congoview" bundle:[NSBundle mainBundle]];            
        [self.navigationController pushViewController:ta animated:NO];
        [ta release]; 
        
        
    }else
    {
        NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
        countrycounter=[valu3 integerForKey:@"countercountry"]; 
        
        Reachability *reach = [Reachability reachabilityForInternetConnection];	
        NetworkStatus netStatus = [reach currentReachabilityStatus];    
        if (netStatus == NotReachable) 
        {        
            NSLog(@"No internet connection!");   
            NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
            [valu setInteger:1 forKey:@"offline"];
            
            NSInteger str=[valu integerForKey:@"offline"];
            NSLog(@"OFF Line Mode Country & number : %d",str);
            
            
            if(countrycounter>=4)
            {
                
                
                NSLog(@"No internet connection!"); 
                
                NSUserDefaults *valu3 = [NSUserDefaults standardUserDefaults];
                [valu3 setInteger:countrycounter forKey:@"countercountry"]; 
                
                alert11=[[UIAlertView alloc] initWithTitle:@"Sorry." message:@"You have already entered 4 entries. Please make a note of this data and enter it again here when next online." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                alert11.tag=1;
                alert11.delegate=self;
                
                [alert11 show];
                [alert11 release];
                
                return;
            }else
            {
                
                if(countrycounter==0)
                {
                    
                    NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                    [valu1 setObject:no1.titleLabel.text forKey:@"no1"];
                    
                    NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                    [valu2 setObject:list.titleLabel.text forKey:@"country1"];
                    
                    NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
                    [valu3 setObject:no2.titleLabel.text forKey:@"no2"];
                    
                    NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
                    [valu4 setObject:list1.titleLabel.text forKey:@"country2"];
                    
                    NSUserDefaults *valu5= [NSUserDefaults standardUserDefaults];
                    [valu5 setObject:no3.titleLabel.text forKey:@"no3"];
                    
                    NSUserDefaults *valu6= [NSUserDefaults standardUserDefaults];
                    [valu6 setObject:list2.titleLabel.text forKey:@"country3"];
                    
                    
                    NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                    [va setInteger:countrycounter forKey:@"countercountry"];
                    
                    
                    NSUserDefaults *va1 = [NSUserDefaults standardUserDefaults];
                    [va1 setInteger:countrycounter forKey:@"countercountrymail1"];
                    
                    NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
                    NSString *name=[val objectForKey:@"user"];
                    NSUserDefaults *val1 = [NSUserDefaults standardUserDefaults];
                    NSString *name1=[val1 objectForKey:@"newuser"];
                    NSUserDefaults *val2 = [NSUserDefaults standardUserDefaults];
                    NSInteger loginval1=[val2 integerForKey:@"Login"];
                    
                    if(loginval1==1)
                    {
                        if(name.length!=0&&name!=nil )
                        {
                            NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                            [valu7 setObject:name  forKey:@"offlineuser1"];
                            
                            NSString *str7=[valu7 objectForKey:@"offlineuser1"];
                            NSLog(@"OFF Line user : %@",str7);                    }
                    }else
                    {
                        NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                        [valu7 setObject:name1  forKey:@"offlineuser1"];
                        
                        NSString *str7=[valu7 objectForKey:@"offlineuser1"];
                        NSLog(@"OFF Line user: %@",str7);   
                    }
                    
                    
                    alert11=[[UIAlertView alloc] initWithTitle:nil message:@"This number will update when you are next online. Please note that you need to restart this App once online for this data to be sent." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                    alert11.tag=1;
                    alert11.delegate=self;
                    
                    [alert11 show];
                    [alert11 release];
                    
                }
                if(countrycounter==1)
                {
                    
                    NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                    [valu1 setObject:no1.titleLabel.text forKey:@"no4"];
                    
                    NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                    [valu2 setObject:list.titleLabel.text forKey:@"country4"];
                    
                    NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
                    [valu3 setObject:no2.titleLabel.text forKey:@"no5"];
                    
                    NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
                    [valu4 setObject:list1.titleLabel.text forKey:@"country5"];
                    
                    NSUserDefaults *valu5= [NSUserDefaults standardUserDefaults];
                    [valu5 setObject:no3.titleLabel.text forKey:@"no6"];
                    
                    NSUserDefaults *valu6= [NSUserDefaults standardUserDefaults];
                    [valu6 setObject:list2.titleLabel.text forKey:@"country6"];
                    
                    NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                    [va setInteger:countrycounter forKey:@"countercountry"];
                    NSUserDefaults *va1 = [NSUserDefaults standardUserDefaults];
                    [va1 setInteger:countrycounter forKey:@"countercountrymail2"];
                    
                    
                    NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
                    NSString *name=[val objectForKey:@"user"];
                    NSUserDefaults *val1 = [NSUserDefaults standardUserDefaults];
                    NSString *name1=[val1 objectForKey:@"newuser"];
                    NSUserDefaults *val2 = [NSUserDefaults standardUserDefaults];
                    NSInteger loginval1=[val2 integerForKey:@"Login"];
                    
                    if(loginval1==1)
                    {
                        if(name.length!=0 &&name!=nil)
                        {
                            NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                            [valu7 setObject:name  forKey:@"offlineuser2"];
                            
                            NSString *str7=[valu7 objectForKey:@"offlineuser2"];
                            NSLog(@"OFF Line user : %@",str7);                    }
                    }else
                    {
                        NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                        [valu7 setObject:name1  forKey:@"offlineuser2"];
                        
                        NSString *str7=[valu7 objectForKey:@"offlineuser2"];
                        NSLog(@"OFF Line user: %@",str7);   
                    }
                    
                    
                    alert11=[[UIAlertView alloc] initWithTitle:nil message:@"This number will update when you are next online. Please note that you need to restart this App once online for this data to be sent." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                    alert11.tag=1;
                    alert11.delegate=self;
                    
                    [alert11 show];
                    [alert11 release];
                    
                }
                if(countrycounter==2)
                {
                    
                    NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                    [valu1 setObject:no1.titleLabel.text forKey:@"no7"];
                    
                    NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                    [valu2 setObject:list.titleLabel.text forKey:@"country7"];
                    
                    NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
                    [valu3 setObject:no2.titleLabel.text forKey:@"no8"];
                    
                    NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
                    [valu4 setObject:list1.titleLabel.text forKey:@"country8"];
                    
                    NSUserDefaults *valu5= [NSUserDefaults standardUserDefaults];
                    [valu5 setObject:no3.titleLabel.text forKey:@"no9"];
                    
                    NSUserDefaults *valu6= [NSUserDefaults standardUserDefaults];
                    [valu6 setObject:list2.titleLabel.text forKey:@"country9"];
                    
                    
                    NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                    [va setInteger:countrycounter forKey:@"countercountry"]; 
                    NSUserDefaults *va1 = [NSUserDefaults standardUserDefaults];
                    [va1 setInteger:countrycounter forKey:@"countercountrymail3"];
                    
                    
                    NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
                    NSString *name=[val objectForKey:@"user"];
                    NSUserDefaults *val1 = [NSUserDefaults standardUserDefaults];
                    NSString *name1=[val1 objectForKey:@"newuser"];
                    NSUserDefaults *val2 = [NSUserDefaults standardUserDefaults];
                    NSInteger loginval1=[val2 integerForKey:@"Login"];
                    
                    if(loginval1==1)
                    {
                        if(name.length!=0 )
                        {
                            NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                            [valu7 setObject:name  forKey:@"offlineuser3"];
                            
                            NSString *str7=[valu7 objectForKey:@"offlineuser3"];
                            NSLog(@"OFF Line user : %@",str7);                    }
                    }else
                    {
                        NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                        [valu7 setObject:name1  forKey:@"offlineuser3"];
                        
                        NSString *str7=[valu7 objectForKey:@"offlineuser3"];
                        NSLog(@"OFF Line user: %@",str7);   
                    }
                    
                    
                    alert11=[[UIAlertView alloc] initWithTitle:nil message:@"This number will update when you are next online. Please note that you need to restart this App once online for this data to be sent." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                    alert11.tag=1;
                    alert11.delegate=self;
                    
                    [alert11 show];
                    [alert11 release];
                }
                if(countrycounter==3)
                {
                    NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
                    [valu1 setObject:no1.titleLabel.text forKey:@"no10"];
                    
                    NSUserDefaults *valu2= [NSUserDefaults standardUserDefaults];
                    [valu2 setObject:list.titleLabel.text forKey:@"country10"];
                    
                    NSUserDefaults *valu3= [NSUserDefaults standardUserDefaults];
                    [valu3 setObject:no2.titleLabel.text forKey:@"no11"];
                    
                    NSUserDefaults *valu4= [NSUserDefaults standardUserDefaults];
                    [valu4 setObject:list1.titleLabel.text forKey:@"country11"];
                    
                    NSUserDefaults *valu5= [NSUserDefaults standardUserDefaults];
                    [valu5 setObject:no3.titleLabel.text forKey:@"no12"];
                    
                    NSUserDefaults *valu6= [NSUserDefaults standardUserDefaults];
                    [valu6 setObject:list2.titleLabel.text forKey:@"country12"];
                    
                    
                    NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
                    NSString *name=[val objectForKey:@"user"];
                    NSUserDefaults *val1 = [NSUserDefaults standardUserDefaults];
                    NSString *name1=[val1 objectForKey:@"newuser"];
                    NSUserDefaults *val2 = [NSUserDefaults standardUserDefaults];
                    NSInteger loginval1=[val2 integerForKey:@"Login"];
                    
                    if(loginval1==1)
                    {
                        if(name.length!=0 )
                        {
                            NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                            [valu7 setObject:name  forKey:@"offlineuser4"];
                            
                            NSString *str7=[valu7 objectForKey:@"offlineuser4"];
                            NSLog(@"OFF Line user : %@",str7);                    }
                    }else
                    {
                        NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                        [valu7 setObject:name1  forKey:@"offlineuser4"];
                        
                        NSString *str7=[valu7 objectForKey:@"offlineuser4"];
                        NSLog(@"OFF Line user: %@",str7);   
                    }
                    
                    
                    NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                    [va setInteger:countrycounter forKey:@"countercountry"]; 
                    
                    NSUserDefaults *va1 = [NSUserDefaults standardUserDefaults];
                    [va1 setInteger:countrycounter forKey:@"countercountrymail4"];
                    
                    
                    alert11=[[UIAlertView alloc] initWithTitle:nil message:@"This number will update when you are next online. Please note that you need to restart this App once online for this data to be sent." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];                        alert11.tag=1;
                    alert11.delegate=self;
                    
                    [alert11 show];
                    [alert11 release];
                }
                countrycounter++;
                NSUserDefaults *va = [NSUserDefaults standardUserDefaults];
                [va setInteger:countrycounter forKey:@"countercountry"]; 
                
            }
            
            
            
        } 
        else 
        { 
            NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
            [valu setInteger:0 forKey:@"offline"];
            
            NSInteger str=[valu integerForKey:@"offline"];
            NSLog(@"OFF Line Mode Country & number : %d",str);
            
            NSUserDefaults *valu1= [NSUserDefaults standardUserDefaults];
            [valu1 setObject:@"" forKey:@"country1"];
            
            
            
            NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
            NSString *name=[val objectForKey:@"user"];
            
            NSUserDefaults *val2 = [NSUserDefaults standardUserDefaults];
            NSInteger loginval1=[val2 integerForKey:@"Login"];
            
            if(loginval1==1)
            {
                if(name.length!=0 )
                {
                    NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                    [valu7 setObject:@""  forKey:@"offlineuser"];
                    
                    NSString *str7=[valu7 objectForKey:@"offlineuser"];
                    NSLog(@"OFF Line user : %@",str7);                    }
            }else
            {
                NSUserDefaults *valu7= [NSUserDefaults standardUserDefaults];
                [valu7 setObject:@""  forKey:@"offlineuser"];
                
                NSString *str7=[valu7 objectForKey:@"offlineuser"];
                NSLog(@"OFF Line user: %@",str7);   
            }
            
            
            [self inwitdownloadhstring];
            
        }
    }
    
    
    
}
-(void)inwitdownloadhstring
{
    
    if([no1.titleLabel.text isEqualToString:@"0"]&&[no2.titleLabel.text isEqualToString:@"0"]&&[no3.titleLabel.text isEqualToString:@"0"])
    {
        congoview *ta=[[congoview alloc]initWithNibName:@"congoview" bundle:[NSBundle mainBundle]];            
        [self.navigationController pushViewController:ta animated:NO];
        [ta release]; 
        
        
    }else
    {
        NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
        NSString *name=[val objectForKey:@"user"];
        NSUserDefaults *val1 = [NSUserDefaults standardUserDefaults];
        NSString *name1=[val1 objectForKey:@"newuser"];
        
        NSURL *url = [NSURL URLWithString:ServerURL];
        ASIFormDataRequest *request1 = [ASIFormDataRequest requestWithURL:url];
        
        [request1 setPostValue:@"Countrycount" forKey:@"Command"];
        NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
        loginval=[valu integerForKey:@"Login"];
        NSLog(@"login detail %d",loginval);
        NSLog(@"Country-1 %@",list.titleLabel.text);
        NSLog(@"Country-2 %@",list1.titleLabel.text);
        NSLog(@"Country-3 %@",list2.titleLabel.text);
        NSLog(@"Number -1 %@",no1.titleLabel.text);
        NSLog(@"Number -2 %@",no2.titleLabel.text);
        NSLog(@"Number -2 %@",no3.titleLabel.text);
        
        if(loginval==1)
        {
            if(name.length!=0 )
            {
                [request1 setPostValue:name forKey:@"user_name"];
                NSLog(@"user Name %@",name);
            }
        }else
        {
            [request1 setPostValue:name1 forKey:@"user_name"];
            NSLog(@"user Name %@",name1);
        }
        
        
        [request1 setPostValue:list.titleLabel.text forKey:@"country_name1"];
        [request1 setPostValue:list1.titleLabel.text forKey:@"country_name2"];
        [request1 setPostValue:list2.titleLabel.text forKey:@"country_name3"];
        [request1 setPostValue:no1.titleLabel.text forKey:@"country_nos1"];
        [request1 setPostValue:no2.titleLabel.text forKey:@"country_nos2"];
        [request1 setPostValue:no3.titleLabel.text forKey:@"country_nos3"];
        
        [request1 startSynchronous];
        NSError *error = [request1 error];
        if (!error) 
        {
            NSString *response = [request1 responseString];
            NSMutableDictionary *responseJSON = [response JSONValue]; 
            NSString *loginstr=[responseJSON objectForKey:@"Response"];
            NSString *loginstr1=[responseJSON objectForKey:@"Count"];
            
            NSLog(@"My status :%@",loginstr);
            NSLog(@"My count :%@",loginstr1);
            if([loginstr isEqualToString:@"Success"])
            {
                NSLog(@"Send Mail Success");
                [self loading];
                
            }else
            {
                UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Please try again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                
                
                [alert show];
                [alert release];
            }
            
        }
    }
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex 
{ 
    if(alert11.tag==1)
    {
        congoview *ta=[[congoview alloc]initWithNibName:@"congoview" bundle:[NSBundle mainBundle]];            
        [self.navigationController pushViewController:ta animated:NO];
        [ta release];  
    }
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

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.enabled=NO;
    return NO;
    
}
-(void)showDatePicker
{
    datePicker=[[UIDatePicker alloc]init];
    datePicker.frame=CGRectMake(100,80, 240, 150);
    datePicker.datePickerMode=UIDatePickerModeDate;
    datePicker.backgroundColor=[UIColor clearColor];
    datePicker.date = [NSDate date]; 
    [self.view addSubview:datePicker];
    
    
    button = [[UIButton alloc]init];
    button.frame=CGRectMake(330,25,75,38);
    [button setBackgroundImage:[UIImage imageNamed:@"done@1x.png"] forState:UIControlStateNormal];
    button.backgroundColor=[UIColor clearColor];
    [button addTarget:self action:@selector(done) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    
    
}
-(void)done
{
    button.hidden=YES;
    datePicker.hidden=YES;
    send.hidden=NO;
    numbers.hidden=NO;
    country.hidden=NO;
    list.hidden=NO;
    list1.hidden=NO;
    list2.hidden=NO;
    no1.hidden=NO;
    no2.hidden=NO;
    no3.hidden=NO;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd-MM-yyyy"];
    NSString *stringFromDate = [formatter stringFromDate:datePicker.date];
    [formatter release];
    
    NSLog(@"%@", stringFromDate);
    datebtn.text=stringFromDate;
    
    
}

-(IBAction)gobackview:(id)sender
{
    welldone *backview=[[welldone alloc]initWithNibName:@"welldone" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(IBAction)addlistonmenu:(id)sender
{
    count=1;
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:1 forKey:@"table"];
    
    tableview.hidden=NO;
    customView.hidden=YES;
    
    customView=[UIView new];
    customView.frame=CGRectMake(0, 270, 1024, 500);
    customView.backgroundColor=[UIColor grayColor];
    self.tableview.rowHeight = 100;
    tableview.frame=CGRectMake(0, 0, 1024,500);
    
    self.tableview.backgroundColor = [UIColor yellowColor];
    tableview.backgroundColor=[UIColor clearColor];
    [self.customView addSubview:tableview];
    
    [self.view addSubview:customView];
}
-(IBAction)addlistonmenu1:(id)sender
{
    count=2;
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:1 forKey:@"table"];
    tableview.hidden=NO;
    customView.hidden=YES;
    
    customView=[UIView new];
    
    customView.frame=CGRectMake(0, 270, 1024, 500);
    customView.backgroundColor=[UIColor grayColor];
    
    
    
    self.tableview.rowHeight = 100;
    tableview.frame=CGRectMake(0, 0, 1024,500);
    self.tableview.backgroundColor = [UIColor yellowColor];
    tableview.backgroundColor=[UIColor clearColor];
    [self.customView addSubview:tableview];
    
    
    
    [self.view addSubview:customView];
}
-(IBAction)addlistonmenu2:(id)sender
{
    count=3;
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:1 forKey:@"table"];
    tableview.hidden=NO;
    customView.hidden=YES;
    
    customView=[UIView new];
    
    customView.frame=CGRectMake(0, 270,1024, 500);
    customView.backgroundColor=[UIColor grayColor];
    
    
    
    self.tableview.rowHeight = 100;
    tableview.frame=CGRectMake(0, 0,1024, 500);
    self.tableview.backgroundColor = [UIColor yellowColor];
    tableview.backgroundColor=[UIColor clearColor];
    [self.customView addSubview:tableview];
    
    
    
    [self.view addSubview:customView];
}
-(IBAction)addnumberonmenu:(id)sender
{
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:2 forKey:@"table"];
    count=1;
    tableview1.hidden=NO;
    customView.hidden=YES;
    
    customView=[UIView new];
    
    customView.frame=CGRectMake(0, 270, 1024,500);
    customView.backgroundColor=[UIColor grayColor];
    
    
    
    self.tableview1.rowHeight = 100;
    tableview1.frame=CGRectMake(0, 0, 1024, 500);
    self.tableview1.backgroundColor = [UIColor yellowColor];
    tableview1.backgroundColor=[UIColor clearColor];
    [self.customView addSubview:tableview1];
    
    
    
    [self.view addSubview:customView];
}
-(IBAction)addnumberonmenu1:(id)sender
{
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:2 forKey:@"table"];
    count=2;
    tableview1.hidden=NO;
    customView.hidden=YES;
    
    customView=[UIView new];
    
    customView.frame=CGRectMake(0, 270, 1024,500);
    customView.backgroundColor=[UIColor grayColor];
    
    
    
    self.tableview1.rowHeight = 100;
    
    tableview1.frame=CGRectMake(0, 0, 1024, 500);
    self.tableview1.backgroundColor = [UIColor yellowColor];
    tableview1.backgroundColor=[UIColor clearColor];
    [self.customView addSubview:tableview1];
    
    
    
    [self.view addSubview:customView];
}

-(IBAction)addnumberonmenu2:(id)sender
{
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:2 forKey:@"table"];  
    count=3;
    tableview1.hidden=NO;
    customView.hidden=YES;
    
    customView=[UIView new];
    
    customView.frame=CGRectMake(0, 270, 1024, 500);
    customView.backgroundColor=[UIColor grayColor];
    
    
    
    self.tableview1.rowHeight = 100;
    tableview1.frame=CGRectMake(0, 0, 1024, 500);
    self.tableview1.backgroundColor = [UIColor yellowColor];
    tableview1.backgroundColor=[UIColor clearColor];
    [self.customView addSubview:tableview1];
    [self.tableview reloadData];
    
    
    [self.view addSubview:customView];
}
- (NSInteger)tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section
{
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    table1=[valu integerForKey:@"table"];
    if(table1==1)
    {
        return [contactArray count];
    }else
    {
        return [contactArray1 count];  
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
	int row = [indexPath row];
	static NSString *tableIdentifier = @"TableIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
	
	if(cell == nil){
		cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier]autorelease];
	}
	
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    table1=[valu integerForKey:@"table"];
    if(table1==1)
    {
        cell.textLabel.text = [self.contactArray objectAtIndex:row];
        cell.textLabel.font =[UIFont fontWithName:@"Opificio" size:30.f];
    }else
    {
        cell.textLabel.text = [self.contactArray1 objectAtIndex:row];
        cell.textLabel.font = [UIFont fontWithName:@"Opificio" size:30.f];  
    }
	return cell;
}




#pragma mark -
#pragma mark UITableView Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    table1=[valu integerForKey:@"table"];
    if(table1==1)
    {
        NSString *str=[NSString stringWithFormat:@"%@",[contactArray objectAtIndex:indexPath.row]];
        if(count==1)
        {
            [list setTitle:str forState:UIControlStateNormal];
            list.titleLabel.textColor=[UIColor blackColor];
            list.titleLabel.font=[UIFont fontWithName:@"Opificio" size:30.f];
            list.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            list.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        }
        if(count==2)
        {
            [list1 setTitle:str forState:UIControlStateNormal];
            list1.titleLabel.textColor=[UIColor blackColor];
            list1.titleLabel.font=[UIFont fontWithName:@"Opificio" size:30.f];
            list1.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            list1.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        }
        if(count==3)
        {
            [list2 setTitle:str forState:UIControlStateNormal];
            list2.titleLabel.textColor=[UIColor blackColor];
            list2.titleLabel.font=[UIFont fontWithName:@"Opificio" size:30.f];;
            list2.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            list2.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        }
    }else
    {
        NSString *str=[NSString stringWithFormat:@"%@",[contactArray1 objectAtIndex:indexPath.row]];
        if(count==1)
        {
            [no1 setTitle:str forState:UIControlStateNormal];
            no1.titleLabel.textColor=[UIColor blackColor];
            no1.titleLabel.font=[UIFont fontWithName:@"Opificio" size:30.f];
            no1.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            no1.contentEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
        }
        if(count==2)
        {
            [no2 setTitle:str forState:UIControlStateNormal];
            no2.titleLabel.textColor=[UIColor blackColor];
            no2.titleLabel.font=[UIFont fontWithName:@"Opificio" size:30.f];
            no2.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            no2.contentEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
        }
        if(count==3)
        {
            [no3 setTitle:str forState:UIControlStateNormal];
            no3.titleLabel.textColor=[UIColor blackColor];
            no3.titleLabel.font=[UIFont fontWithName:@"Opificio" size:30.f];
            no3.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            no3.contentEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
            
        }
        
    }
    tableview.hidden = YES;
    customView.hidden=YES;
	
    
}
-(void)viewWillAppear:(BOOL)animated
{
    qlb.frame=CGRectMake(150, 40, 600, 50);
    qlb.textAlignment=UITextAlignmentLeft;
    qlb.numberOfLines=2;
    qlb.font= [UIFont fontWithName:@"Opificio" size:40.f];
    NSUserDefaults *val = [NSUserDefaults standardUserDefaults];
    NSString *name=[val objectForKey:@"user"];
    NSLog(@"Login user name %@",name);
    
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    loginval=[valu integerForKey:@"Login"];
    NSLog(@"login detail %d",loginval);
    if(loginval==1&&name.length!=0)
    {
        qlb.text=[NSString stringWithFormat:@"You are logged in as %@",name]; 
    }else
    {
        qlb.text=@"";
    }
    

    
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
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);}

@end
