//
//  PMLRootViewController.h
//  SakshiPaper
//
//  Created by admin on 18/03/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PMLRootViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property(strong,nonatomic) NSArray *arr;

@end
