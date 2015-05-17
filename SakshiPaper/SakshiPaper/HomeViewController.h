//
//  HomeViewController.h
//  SakshiPaper
//
//  Created by admin on 18/03/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PMLRootViewController.h"


@interface HomeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *radioLabelMain;
@property (strong, nonatomic) IBOutlet UILabel *radioLabelAp;
@property (strong, nonatomic) IBOutlet UILabel *radioLabelTg;


@property (strong, nonatomic) IBOutlet UIView *homeRadioButtonsView;
@property (strong, nonatomic) IBOutlet UIView *editionsView;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollEditionsView;


@property (strong, nonatomic)  UIButton *radiobutton1;
@property (strong, nonatomic)  UIButton *radiobutton2;
@property (strong, nonatomic)  UIButton *radiobutton3;

@property(strong,nonatomic) NSString *clickedButton;
@property(strong,nonatomic) NSArray *mc;
@property(strong,nonatomic) UIButton * aButton;
@property(strong,nonatomic)UILabel *l;

-(id)initWithButtonsRows:(int)rows columns:(int)columns;

-(void)radiobuttonSelected:(id)sender;

-(void)createEditions:(id)sender;

-(UIImage*)createButtonBackGroundImage:(int)i sender:(id)sender;

@property(strong,nonatomic) NSMutableArray *buttonsArray, *labelsArray;

- (void)actionPick:(id)sender;
-(void)displayEdition:(id)sender;

-(void)actionPick:(int)i bindex:(id)sender;

@property(strong,nonatomic)NSMutableArray *mainEditionsNames;
@property(strong,nonatomic) NSMutableArray *districtEditionsNamesAp;
@property(strong,nonatomic)NSMutableArray *districtEditionsNamesTg;


@end
