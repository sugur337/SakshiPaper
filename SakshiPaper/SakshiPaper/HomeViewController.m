//
//  HomeViewController.m
//  SakshiPaper
//
//  Created by admin on 18/03/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "HomeViewController.h"
#import <QuartzCore/QuartzCore.h>



@implementation HomeViewController

@synthesize radioLabelMain;
@synthesize radioLabelAp;
@synthesize radioLabelTg;
@synthesize homeRadioButtonsView;
@synthesize editionsView;
@synthesize scrollEditionsView;
@synthesize radiobutton1;
@synthesize radiobutton2;
@synthesize radiobutton3;
@synthesize mc,aButton;
@synthesize clickedButton;
@synthesize buttonsArray;
@synthesize mainEditionsNames;
@synthesize districtEditionsNamesAp;
@synthesize districtEditionsNamesTg;
@synthesize labelsArray;
@synthesize l;


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

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView
 {
 }
 */

/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 }
 */

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"inside viewDidAppear....");
    
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}
-(void)viewDidLoad{
    [super viewDidLoad];
    
    NSLog(@"inside viewDidLoad..");
    self.clickedButton = [[NSString alloc]init];
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        
        
        [radioLabelMain setFont:[UIFont systemFontOfSize:12]];
        [radioLabelMain setTextAlignment:UITextAlignmentLeft];
        radioLabelMain.frame=CGRectMake(35.0, 20.0, 200.0, 35.0);
        [radioLabelAp setFont:[UIFont systemFontOfSize:12]];
        [radioLabelAp setTextAlignment:UITextAlignmentLeft];
        radioLabelAp.frame=CGRectMake(138.0, 20.0,150.0, 35.0);
        [radioLabelTg setFont:[UIFont systemFontOfSize:12]];
        [radioLabelTg setTextAlignment:UITextAlignmentLeft];
        radioLabelTg.frame=CGRectMake(250.0, 20.0, 150.0, 35.0);
        
        
        radiobutton1 = [[UIButton alloc] initWithFrame:CGRectMake(10, 25, 20, 20)];
        [radiobutton1 setTag:0];
        [radiobutton1 setBackgroundImage:[UIImage imageNamed:@"RBOff.png"] forState:UIControlStateNormal];
        [radiobutton1 setBackgroundImage:[UIImage imageNamed:@"RBOn.png"] forState:UIControlStateSelected];
        [radiobutton1 addTarget:self action:@selector(radiobuttonSelected:) forControlEvents:UIControlEventTouchUpInside];
        [radiobutton1 setSelected:YES];
        
        radiobutton1.layer.cornerRadius = 10.0;
        radiobutton1.layer.masksToBounds = YES;
        radiobutton1.layer.borderColor = [UIColor lightGrayColor].CGColor;
        radiobutton1.layer.borderWidth = 1.5;
        
        
        
        radiobutton2 = [[UIButton alloc] initWithFrame:CGRectMake(115, 25, 20, 20)];
        [radiobutton2 setTag:1];
        [radiobutton2 setBackgroundImage:[UIImage imageNamed:@"RBOff.png"] forState:UIControlStateNormal];
        [radiobutton2 setBackgroundImage:[UIImage imageNamed:@"RBOn.png"] forState:UIControlStateSelected];
        [radiobutton2 addTarget:self action:@selector(radiobuttonSelected:) forControlEvents:UIControlEventTouchUpInside];
        
        radiobutton2.layer.cornerRadius = 10.0;
        radiobutton2.layer.masksToBounds = YES;
        radiobutton2.layer.borderColor = [UIColor lightGrayColor].CGColor;
        radiobutton2.layer.borderWidth = 1;
        
        radiobutton3 = [[UIButton alloc] initWithFrame:CGRectMake(230, 25, 20, 20)];
        [radiobutton3 setTag:2];
        [radiobutton3 setBackgroundImage:[UIImage imageNamed:@"RBOff.png"] forState:UIControlStateNormal];
        [radiobutton3 setBackgroundImage:[UIImage imageNamed:@"RBOn.png"] forState:UIControlStateSelected];
        [radiobutton3 addTarget:self action:@selector(radiobuttonSelected:) forControlEvents:UIControlEventTouchUpInside];
        
        radiobutton3.layer.cornerRadius = 10.0;
        radiobutton3.layer.masksToBounds = YES;
        radiobutton3.layer.borderColor = [UIColor lightGrayColor].CGColor;
        radiobutton3.layer.borderWidth = 1;
        
        mainEditionsNames = [[NSMutableArray alloc]initWithObjects:@"Hyderabad Main", @"Andhra Pradesh",@"Telangana",nil];
        districtEditionsNamesAp=[[NSMutableArray alloc]initWithObjects:@"Anantapur",@"Chittoor",@"East Godavari",@"West Godavari",@"Krishna",@"Guntur",@"Kadapa",@"Kurnool",@"Prakasam",@"Nellore",@"Srikakulam",@"Visakhapatnam",@"Vijayanagaram", nil];
        districtEditionsNamesTg =[[NSMutableArray alloc]initWithObjects:@"Adilabad",@"Mahabubnagar",@"Khammam",@"Karimnagar",@"Hyderabad",@"Nalgonda",@"Medak",@"Warangal",@"Ranga Reddy",@"Nizamabad", nil];
        
        buttonsArray = [[NSMutableArray alloc]init];
        labelsArray = [[NSMutableArray alloc]init];
        
        [self createEditions:radiobutton1];
        
        self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"stand_bg1.jpg"]];
        //self.view.clipsToBounds = YES;
        scrollEditionsView.backgroundColor=[UIColor clearColor];
        
        self.homeRadioButtonsView.frame=CGRectMake(10.0, self.view.frame.size.height-430    , self.view.frame.size.width-40, 40.0);
        self.homeRadioButtonsView.backgroundColor=[UIColor clearColor];
        [self.homeRadioButtonsView addSubview:radiobutton1];
        [self.homeRadioButtonsView addSubview:radiobutton2];
        [self.homeRadioButtonsView addSubview:radiobutton3];
        
        
    }else {
        
        radiobutton1 = [[UIButton alloc] initWithFrame:CGRectMake(10, 20, 24, 24)];
        [radiobutton1 setTag:0];
        [radiobutton1 setBackgroundImage:[UIImage imageNamed:@"RBOff.png"] forState:UIControlStateNormal];
        [radiobutton1 setBackgroundImage:[UIImage imageNamed:@"RBOn.png"] forState:UIControlStateSelected];
        [radiobutton1 addTarget:self action:@selector(radiobuttonSelected:) forControlEvents:UIControlEventTouchUpInside];
        [radiobutton1 setSelected:YES];
        
        radiobutton1.layer.cornerRadius = 12.0;
        radiobutton1.layer.masksToBounds = YES;
        radiobutton1.layer.borderColor = [UIColor lightGrayColor].CGColor;
        radiobutton1.layer.borderWidth = 1;
        
        radiobutton2 = [[UIButton alloc] initWithFrame:CGRectMake(220, 20, 24, 24)];
        [radiobutton2 setTag:1];
        [radiobutton2 setBackgroundImage:[UIImage imageNamed:@"RBOff.png"] forState:UIControlStateNormal];
        [radiobutton2 setBackgroundImage:[UIImage imageNamed:@"RBOn.png"] forState:UIControlStateSelected];
        [radiobutton2 addTarget:self action:@selector(radiobuttonSelected:) forControlEvents:UIControlEventTouchUpInside];
        
        radiobutton2.layer.cornerRadius = 12.0;
        radiobutton2.layer.masksToBounds = YES;
        radiobutton2.layer.borderColor = [UIColor lightGrayColor].CGColor;
        radiobutton2.layer.borderWidth = 1;
        
        radiobutton3 = [[UIButton alloc] initWithFrame:CGRectMake(395, 20, 24, 24)];
        [radiobutton3 setTag:2];
        [radiobutton3 setBackgroundImage:[UIImage imageNamed:@"RBOff.png"] forState:UIControlStateNormal];
        [radiobutton3 setBackgroundImage:[UIImage imageNamed:@"RBOn.png"] forState:UIControlStateSelected];
        [radiobutton3 addTarget:self action:@selector(radiobuttonSelected:) forControlEvents:UIControlEventTouchUpInside];
        
        radiobutton3.layer.cornerRadius = 12.0;
        radiobutton3.layer.masksToBounds = YES;
        radiobutton3.layer.borderColor = [UIColor lightGrayColor].CGColor;
        radiobutton3.layer.borderWidth = 1;
        
        mainEditionsNames = [[NSMutableArray alloc]initWithObjects:@"Hyderabad Main", @"Andhra Pradesh",@"Telangana",nil];
        districtEditionsNamesAp=[[NSMutableArray alloc]initWithObjects:@"Anantapur",@"Chittoor",@"East Godavari",@"West Godavari",@"Krishna",@"Guntur",@"Kadapa",@"Kurnool",@"Prakasam",@"Nellore",@"Srikakulam",@"Visakhapatnam",@"Vijayanagaram", nil];
        districtEditionsNamesTg =[[NSMutableArray alloc]initWithObjects:@"Adilabad",@"Mahabubnagar",@"Khammam",@"Karimnagar",@"Hyderabad",@"Nalgonda",@"Medak",@"Warangal",@"Ranga Reddy",@"Nizamabad", nil];
        
        buttonsArray = [[NSMutableArray alloc]init];
        labelsArray = [[NSMutableArray alloc]init];
        
        [self createEditions:radiobutton1];
        
        self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"stand_bg1.jpg"]];
        //self.view.clipsToBounds = YES;
        scrollEditionsView.backgroundColor=[UIColor clearColor];
        
        self.homeRadioButtonsView.backgroundColor=[UIColor clearColor];
        [self.homeRadioButtonsView addSubview:radiobutton1];
        [self.homeRadioButtonsView addSubview:radiobutton2];
        [self.homeRadioButtonsView addSubview:radiobutton3];
        
    }
    
    
}

- (void)viewDidUnload
{
    [self setHomeRadioButtonsView:nil];
    [self setEditionsView:nil];
    [self setScrollEditionsView:nil];
    [self setRadioLabelMain:nil];
    [self setRadioLabelAp:nil];
    [self setRadioLabelTg:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    NSLog(@"segue: %@",[segue.identifier description]);
    
    PMLRootViewController *destination =
    [segue destinationViewController];
    destination.arr = [[NSArray alloc]init];
    destination.arr = self.mc;
}
- (void)actionPick:(id)sender
{
    UIButton *button = (UIButton *)sender;
    NSLog(@"Button tag: %i", button.tag);
    
    NSLog(@"button with title:%@ ",button.titleLabel.text);
    [self displayEdition:button];
    [self performSegueWithIdentifier:@"mySegue" sender:button];
    
    
}
//-(void)actionPick:(int)i bindex:(id)sender{
//    NSLog(@"inside actionPick 2 arg method...");
//    UIButton *button = (UIButton *)sender;
//    NSLog(@"Button tag: %i", button.tag);
//    NSLog(@"i val: %d",i);
//
//
//
//}

-(UIImage*)createButtonBackGroundImage:(int)i sender:(id)sender{
    
    NSString *readDateStringFromFile = @"19_01_2015";
    NSString *basePathOfSiteUrl=@"http://anax1ep.pressmart.com/demosakshi/Publications/DemoSakshi/Dem/thumbs/";
    NSString *type = @"/PageThumb/";
    NSString *countString=@"001";
    NSString *endPathOfSiteUrl=@".jpg";
    
    NSString *finalString=[[NSString alloc]init];
    
    if ([sender tag]==0) {
        
        if ([[mainEditionsNames objectAtIndex:i] isEqualToString:@"Hyderabad Main"] ||
            [[mainEditionsNames objectAtIndex:i] isEqualToString:@"Andhra Pradesh"]) {
            
            NSLog(@"Tile image name checking....If..contains spaces");
            NSString *s  = [mainEditionsNames objectAtIndex:i];
            
            NSRange rangeValue = [s rangeOfString:@" " options:NSCaseInsensitiveSearch];
            if (rangeValue.length > 0){
                NSLog(@"Tile image title contains spaces...");
                s = [s stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
                
            }
            
            NSString *partOfsiteUrl=s;
            finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,type,readDateStringFromFile,@"_",countString,
                           endPathOfSiteUrl];
            NSLog(@"Tile finalstring: %@",finalString);
            
            NSURL *url = [NSURL URLWithString:finalString];
            NSData *data = [NSData dataWithContentsOfURL:url];
            UIImage *img = [[UIImage alloc] initWithData:data];
            return img;
            
            
        }else{
            NSString *s  = [mainEditionsNames objectAtIndex:i];
            NSString *partOfsiteUrl=s;
            finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,type,readDateStringFromFile,@"_",countString,
                           endPathOfSiteUrl];
            NSLog(@"Tile finalstring: %@",finalString);
            
            NSURL *url = [NSURL URLWithString:finalString];
            NSData *data = [NSData dataWithContentsOfURL:url];
            UIImage *img = [[UIImage alloc] initWithData:data];
            return img;
            
        }
        
    } else if([sender tag]==1){
        
        if ([[districtEditionsNamesAp objectAtIndex:i] isEqualToString:@"East Godavari"] ||
            [[districtEditionsNamesAp objectAtIndex:i] isEqualToString:@"West Godavari"]) {
            
            NSLog(@"Tile image name checking....If..contains spaces EastGodavari and WestGodavari");
            NSString *s  = [districtEditionsNamesAp objectAtIndex:i];
            
            NSRange rangeValue = [s rangeOfString:@" " options:NSCaseInsensitiveSearch];
            if (rangeValue.length > 0){
                
                s = [s stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
                
            }
            
            NSString *partOfsiteUrl=s;
            finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,type,readDateStringFromFile,@"_",countString,
                           endPathOfSiteUrl];
            NSLog(@"Tile finalstring: %@",finalString);
            
            NSURL *url = [NSURL URLWithString:finalString];
            NSData *data = [NSData dataWithContentsOfURL:url];
            UIImage *img = [[UIImage alloc] initWithData:data];
            return img;
            
            
        }else{
            NSString *s  = [districtEditionsNamesAp objectAtIndex:i];
            NSString *partOfsiteUrl=s;
            finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,type,readDateStringFromFile,@"_",countString,
                           endPathOfSiteUrl];
            NSLog(@"Tile finalstring: %@",finalString);
            
            NSURL *url = [NSURL URLWithString:finalString];
            NSData *data = [NSData dataWithContentsOfURL:url];
            UIImage *img = [[UIImage alloc] initWithData:data];
            return img;
            
        }
        
        
    }else{
        
        if ([[districtEditionsNamesTg objectAtIndex:i] isEqualToString:@"Ranga Reddy"]) {
            
            NSLog(@"Tile image name checking....If..contains spaces");
            NSString *s  = [districtEditionsNamesTg objectAtIndex:i];
            
            NSRange rangeValue = [s rangeOfString:@" " options:NSCaseInsensitiveSearch];
            if (rangeValue.length > 0){
                NSLog(@"Tile image title contains spaces...");
                s = [s stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
                
            }
            
            NSString *partOfsiteUrl=s;
            finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,type,readDateStringFromFile,@"_",countString,
                           endPathOfSiteUrl];
            NSLog(@"Tile finalstring: %@",finalString);
            
            NSURL *url = [NSURL URLWithString:finalString];
            NSData *data = [NSData dataWithContentsOfURL:url];
            UIImage *img = [[UIImage alloc] initWithData:data];
            return img;
            
            
        }else{
            NSString *s  = [districtEditionsNamesTg objectAtIndex:i];
            NSString *partOfsiteUrl=s;
            finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,type,readDateStringFromFile,@"_",countString,
                           endPathOfSiteUrl];
            NSLog(@"Tile finalstring: %@",finalString);
            
            NSURL *url = [NSURL URLWithString:finalString];
            NSData *data = [NSData dataWithContentsOfURL:url];
            UIImage *img = [[UIImage alloc] initWithData:data];
            return img;
            
        }
    }
}

-(void)createEditions:(id)sender{
    
    switch ([sender tag]) {
            int x;
            int y;
            int count;
        case 0:
            x=0;
            y=0;
            count=3;
            
            for(int i = 0; i < count; i++ ) {
                aButton = [UIButton buttonWithType:UIButtonTypeCustom];
                [aButton setTag:i];
                [aButton addTarget:self action:@selector(actionPick:) forControlEvents:UIControlEventTouchUpInside];
                
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    aButton.frame = CGRectMake(0.0+x, 0.0+y, 220.0, 300.0);
                }else{
                    aButton.frame = CGRectMake(80.0+x, 100.0+y, 220.0, 300.0);
                }
                
                UIImage *img = [[UIImage alloc]init];
                img = [self createButtonBackGroundImage:i sender:sender];
                
                [aButton setImage:img forState:UIControlStateNormal];
                [aButton setContentMode:UIViewContentModeCenter];
                [aButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
                [aButton setBackgroundImage:[UIImage imageNamed:@"news_stand.png"] forState:UIControlStateNormal];
                NSLog(@"edition %d name: %@",i,[mainEditionsNames objectAtIndex:i]);
                [aButton setTitle:[mainEditionsNames objectAtIndex:i] forState:UIControlStateHighlighted];
                
                
                [buttonsArray addObject:aButton];
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    
                    l = [[UILabel alloc]initWithFrame:CGRectMake(20.0, 260.0, 170.0, 30.0)];
                    l.text=[mainEditionsNames objectAtIndex:i];
                    [l setBackgroundColor:[UIColor clearColor]];
                    [l setTextAlignment:UITextAlignmentCenter];
                    [l setFont:[UIFont systemFontOfSize:14]];
                    
                }else{
                    
                    l = [[UILabel alloc]initWithFrame:CGRectMake(20.0, 100.0+y+160.0, 170.0, 30.0)];
                    l.text=[mainEditionsNames objectAtIndex:i];
                    [l setBackgroundColor:[UIColor clearColor]];
                    l.textAlignment=UITextAlignmentCenter;
                    [l setFont:[UIFont systemFontOfSize:20]];
                    
                }
                
                [labelsArray addObject:l];
                [aButton addSubview:l];
                
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    self.scrollEditionsView.frame=CGRectMake(0.0, 20.0, 280.0, 400.0);
                    self.scrollEditionsView.contentSize=CGSizeMake(200, 1000);
                    
                }else{
                    self.scrollEditionsView.contentSize=CGSizeMake(130, 300);
                }
                [self.scrollEditionsView addSubview:aButton];
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    y=y+320;
                    
                }else{
                    
                    x=x+200;
                }
                // y=y+120;
            }
            
            break;
            
        case 1:
            
            x=0;
            y=0;
            count=13;
            
            for(int i = 0; i < count; i++ ) {
                aButton = [UIButton buttonWithType:UIButtonTypeCustom];
                [aButton setTag:i];
                [aButton addTarget:self action:@selector(actionPick:) forControlEvents:UIControlEventTouchUpInside];
                
                [aButton setContentMode:UIViewContentModeCenter];
                [aButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
                [aButton setBackgroundImage:[UIImage imageNamed:@"news_stand.png"] forState:UIControlStateNormal];
                
                NSLog(@"edition %d name: %@",i,[districtEditionsNamesAp objectAtIndex:i]);
                [aButton setTitle:[districtEditionsNamesAp objectAtIndex:i] forState:UIControlStateHighlighted];
                
                UIImage *img = [[UIImage alloc]init];
                img = [self createButtonBackGroundImage:i sender:sender];
                [aButton setImage:img forState:UIControlStateNormal];
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    aButton.frame = CGRectMake(0.0, 0.0+y, 220.0, 300.0);
                }else{
                    aButton.frame = CGRectMake(80.0+x, 100.0+y, 220.0, 300.0);
                }//end else
                
                [buttonsArray addObject:aButton];
                l = [[UILabel alloc]initWithFrame:CGRectMake(20.0, 260.0, 170.0, 30.0)];
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    [l setFont:[UIFont systemFontOfSize:14]];
                    l.text=[districtEditionsNamesAp objectAtIndex:i];
                    [l setBackgroundColor:[UIColor clearColor]];
                    l.textAlignment=UITextAlignmentCenter;
                    
                }else{
                    
                    l.text=[districtEditionsNamesAp objectAtIndex:i];
                    [l setBackgroundColor:[UIColor clearColor]];
                    l.textAlignment=UITextAlignmentCenter;
                    [l setFont:[UIFont systemFontOfSize:20]];
                    
                }//end else
                
                [labelsArray addObject:l];
                [aButton addSubview:l];
                
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    self.scrollEditionsView.contentSize=CGSizeMake(200, 4200);
                    
                }else{
                    self.scrollEditionsView.contentSize=CGSizeMake(130, 1700);
                }//end else
                [self.scrollEditionsView addSubview:aButton];
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    y=y+320;
                }else{
                    
                    x=x+200;
                    if (x>=450) {
                        y=y+320;
                        x=0;
                    }
                    
                }//end else
                
            }//end for
            
            break;
            
        case 2:
            
            x=0;
            y=0;
            count = 10;
            
            for(int i = 0; i < count; i++ ) {
                aButton = [UIButton buttonWithType:UIButtonTypeCustom];
                [aButton setTag:i];
                [aButton addTarget:self action:@selector(actionPick:) forControlEvents:UIControlEventTouchUpInside];
                
                [aButton setContentMode:UIViewContentModeCenter];
                [aButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
                [aButton setBackgroundImage:[UIImage imageNamed:@"news_stand.png"] forState:UIControlStateNormal];
                
                NSLog(@"edition %d name: %@",i,[districtEditionsNamesTg objectAtIndex:i]);
                [aButton setTitle:[districtEditionsNamesTg objectAtIndex:i] forState:UIControlStateHighlighted];
                
                UIImage *img = [[UIImage alloc]init];
                img = [self createButtonBackGroundImage:i sender:sender];
                [aButton setImage:img forState:UIControlStateNormal];
                
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    aButton.frame = CGRectMake(0.0, 0.0+y, 220.0, 300.0);
                }else{
                    aButton.frame = CGRectMake(80.0+x, 100.0+y, 220.0, 300.0);
                }//end else
                
                [buttonsArray addObject:aButton];
                
                l = [[UILabel alloc]initWithFrame:CGRectMake(20.0, 260.0, 170.0, 30.0)];
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    [l setFont:[UIFont systemFontOfSize:14]];
                    l.text=[districtEditionsNamesTg objectAtIndex:i];
                    l.textAlignment=UITextAlignmentCenter;
                    [l setBackgroundColor:[UIColor clearColor]];
                    
                }else{
                    
                    l.text=[districtEditionsNamesTg objectAtIndex:i];
                    [l setBackgroundColor:[UIColor clearColor]];
                    [l setTextAlignment:UITextAlignmentCenter];
                    [l setFont:[UIFont systemFontOfSize:20]];
                    
                }//end else
                
                [labelsArray addObject:l];
                [aButton addSubview:l];
                
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    self.scrollEditionsView.contentSize=CGSizeMake(200, 3200);
                    
                }else{
                    self.scrollEditionsView.contentSize=CGSizeMake(130, 1500);
                }//end else
                
                [self.scrollEditionsView addSubview:aButton];
                if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                    y=y+320;
                    
                }else{
                    x=x+200;
                    
                    if (x>=450) {
                        y=y+320;
                        x=0;
                    }
                    
                }//end else
                
                // y=y+120;
            }
            break;
            
        default:
            break;
    }
    
}

-(void)radiobuttonSelected:(id)sender{
    switch ([sender tag]) {
        case 0:
            if([radiobutton1 isSelected]==NO)
            {
                NSLog(@"radio 1 is selected..");
                [radiobutton1 setSelected:YES];
                [radiobutton2 setSelected:NO];
                [radiobutton3 setSelected:NO];
                
                for (aButton in buttonsArray) {
                    aButton.hidden=YES;
                }
                for (l in labelsArray) {
                    l.hidden=YES;
                }
                
                [self createEditions:sender];
                
            }
            
            break;
        case 1:
            if([radiobutton2 isSelected]==NO)
            {
                NSLog(@"radio 2 is selected..");
                [radiobutton2 setSelected:YES];
                [radiobutton1 setSelected:NO];
                [radiobutton3 setSelected:NO];
                
                for (aButton in buttonsArray) {
                    aButton.hidden=YES;
                }
                for (l in labelsArray) {
                    l.hidden=YES;
                }
                [self createEditions:sender];
            }
            break;
        case 2:
            if ([radiobutton3 isSelected]==NO) {
                NSLog(@"radio 3 is selected..");
                [radiobutton3 setSelected:YES];
                [radiobutton2 setSelected:NO];
                [radiobutton1 setSelected:NO];
                
                for (aButton in buttonsArray) {
                    aButton.hidden=YES;
                }
                for (l in labelsArray) {
                    l.hidden=YES;
                }
                [self createEditions:sender];
                
            }
            
        default:
            break;
    }
    
}

-(void)displayEdition:(id)sender{
    
    UIButton *button = (UIButton *)sender;
    if ([button.titleLabel.text isEqualToString:@"Hyderabad Main"] ||
        [button.titleLabel.text isEqualToString:@"Andhra Pradesh"] ||
        [button.titleLabel.text isEqualToString:@"Ranga Reddy"] ||
        [button.titleLabel.text isEqualToString:@"East Godavari"] ||
        [button.titleLabel.text isEqualToString:@"West Godavari"]) {
        
        NSLog(@"button title checking....If..contains spaces");
        NSString *s  = button.titleLabel.text;
        
        NSRange rangeValue = [s rangeOfString:@" " options:NSCaseInsensitiveSearch];
        if (rangeValue.length > 0){
            NSLog(@"title contains spaces...");
            s = [s stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
            
            NSString *readDateStringFromFile = @"22_01_2015";
            NSString *basePathOfSiteUrl=@"http://anax1ep.pressmart.com/demosakshi/Publications/DemoSakshi/Dem/";
            NSString *partOfsiteUrl=s;
            NSString *readCountFromFile = @"17";
            NSString *endPathOfSiteUrl=@".pdf";
            int iCount;
            NSArray *tempArray = [[NSArray alloc]init];
            NSString *finalString=[[NSString alloc]init];
            
            // NSMutableArray *objArray = [[NSMutableArray alloc]init];
            for (iCount=1; iCount<=[readCountFromFile intValue]; iCount++) {
                if(iCount<10){
                    NSLog(@"iCount: %d",iCount);
                    
                    NSMutableString *countString = [[NSMutableString alloc]init];
                    [countString appendFormat:@"%i%i%i",0,0,iCount];
                    
                    NSLog(@"countString: %@",countString);
                    
                    finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,@"/",readDateStringFromFile,@"_",countString,
                                   endPathOfSiteUrl];
                    NSLog(@"finalstring: %@",finalString);
                    countString=nil;
                    tempArray = [tempArray arrayByAddingObject:finalString];
                    
                }
                if (iCount>=10 && iCount<100) {
                    
                    NSLog(@"iCount: %d",iCount);
                    NSMutableString *countString = [[NSMutableString alloc]init];
                    [countString appendFormat:@"%i%i",0,iCount];
                    
                    NSLog(@"countString: %@",countString);
                    
                    finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,@"/",readDateStringFromFile,@"_",countString,
                                   endPathOfSiteUrl];
                    NSLog(@"finalstring: %@",finalString);
                    tempArray = [tempArray arrayByAddingObject:finalString];
                    countString=nil;
                }
                
                
                
            }
            
            mc = [[NSArray alloc]initWithArray:tempArray];
            NSLog(@"setting mc value: %@",mc);
            
        }else{
            NSLog(@"title not contains blank spaces...");
            NSString *readDateStringFromFile = @"22_01_2015";
            NSString *basePathOfSiteUrl=@"http://anax1ep.pressmart.com/demosakshi/Publications/DemoSakshi/Dem/";
            NSString *partOfsiteUrl=s;
            NSString *readCountFromFile = @"17";
            NSString *endPathOfSiteUrl=@".pdf";
            int iCount;
            NSArray *tempArray = [[NSArray alloc]init];
            NSString *finalString=[[NSString alloc]init];
            
            // NSMutableArray *objArray = [[NSMutableArray alloc]init];
            for (iCount=1; iCount<=[readCountFromFile intValue]; iCount++) {
                if(iCount<10){
                    
                    NSMutableString *countString = [[NSMutableString alloc]init];
                    [countString appendFormat:@"%i%i%i",0,0,iCount];
                    
                    NSLog(@"countString: %@",countString);
                    
                    finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,@"/",readDateStringFromFile,@"_",countString,
                                   endPathOfSiteUrl];
                    NSLog(@"finalstring: %@",finalString);
                    countString=nil;
                    tempArray = [tempArray arrayByAddingObject:finalString];
                    
                }
                if (iCount>=10 && iCount<100) {
                    
                    NSLog(@"iCount: %d",iCount);
                    NSMutableString *countString = [[NSMutableString alloc]init];
                    [countString appendFormat:@"%i%i",0,iCount];
                    
                    NSLog(@"countString: %@",countString);
                    
                    finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,@"/",readDateStringFromFile,@"_",countString,
                                   endPathOfSiteUrl];
                    NSLog(@"finalstring: %@",finalString);
                    tempArray = [tempArray arrayByAddingObject:finalString];
                    countString=nil;
                }
                
                
            }
            mc = [[NSArray alloc]initWithArray:tempArray];
            
        }
        
    } else{
        NSLog(@"button title checking....If. not contains spaces..");
        NSString *s  = button.titleLabel.text;
        
        NSString *readDateStringFromFile = @"22_01_2015";
        NSString *basePathOfSiteUrl=@"http://anax1ep.pressmart.com/demosakshi/Publications/DemoSakshi/Dem/";
        NSString *partOfsiteUrl=s;
        NSString *readCountFromFile = @"17";
        NSString *endPathOfSiteUrl=@".pdf";
        int iCount;
        NSArray *tempArray = [[NSArray alloc]init];
        NSString *finalString=[[NSString alloc]init];
        
        for (iCount=1; iCount<=[readCountFromFile intValue]; iCount++) {
            if(iCount<10){
                NSLog(@"iCount: %d",iCount);
                
                NSMutableString *countString = [[NSMutableString alloc]init];
                [countString appendFormat:@"%i%i%i",0,0,iCount];
                
                NSLog(@"countString: %@",countString);
                
                finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,@"/",readDateStringFromFile,@"_",countString,
                               endPathOfSiteUrl];
                NSLog(@"finalstring: %@",finalString);
                countString=nil;
                tempArray = [tempArray arrayByAddingObject:finalString];
                
            }
            if (iCount>=10 && iCount<100) {
                
                NSLog(@"iCount: %d",iCount);
                NSMutableString *countString = [[NSMutableString alloc]init];
                [countString appendFormat:@"%i%i",0,iCount];
                
                NSLog(@"countString: %@",countString);
                
                finalString = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",basePathOfSiteUrl,partOfsiteUrl,@"/",readDateStringFromFile,@"_",countString,
                               endPathOfSiteUrl];
                NSLog(@"finalstring: %@",finalString);
                tempArray = [tempArray arrayByAddingObject:finalString];
                countString=nil;
            }
            
        }
        mc = [[NSArray alloc]initWithArray:tempArray];
        
    }
    
}

@end
