//
//  PMLDataViewController.h
//  SakshiPaper
//
//  Created by admin on 18/03/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PMLDataViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) IBOutlet UIWebView *myWebView;
@property (strong, nonatomic) id dataObject;

- (IBAction)sliderAction:(id)sender;
@end
