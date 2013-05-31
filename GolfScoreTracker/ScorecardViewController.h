//
//  ScorecardViewController.h
//  GolfScoreTracker
//
//  Created by Venkat Rao on 5/30/13.
//  Copyright (c) 2013 Venkat Rao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScorecardViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray * scores;

// this method is called when someone presses the dismiss button
- (IBAction)dismissPressed:(id)sender;

@end
