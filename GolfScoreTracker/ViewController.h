//
//  ViewController.h
//  GolfScoreTracker
//
//  Created by Venkat Rao on 5/23/13.
//  Copyright (c) 2013 Venkat Rao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// control drag an action for button pressed. This method will be called with "next hole" button is pressed
- (IBAction)nextHolePressed:(id)sender;

// control drag an event for button pressed. This method will be called with "+" button is pressed
- (IBAction)addStrokePressed:(id)sender;

// control drag a outlet for the current score. This allows the label text to be changed
@property (weak, nonatomic) IBOutlet UILabel *currentScore;

// control drag a outlet for the total score. This allows the label text to be changed
@property (weak, nonatomic) IBOutlet UILabel *totalScore;

//this keeps track of the number of strokes for the current hole
@property(nonatomic) int counter;

//this tracks the score from the previous holes
@property(strong, nonatomic) NSMutableArray *strokes;


@end
