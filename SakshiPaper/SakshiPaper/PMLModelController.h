//
//  PMLModelController.h
//  SakshiPaper
//
//  Created by admin on 18/03/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PMLDataViewController;

@interface PMLModelController : NSObject <UIPageViewControllerDataSource>
- (PMLDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(PMLDataViewController *)viewController;

-(id)init:(NSArray*)temp;
@end
