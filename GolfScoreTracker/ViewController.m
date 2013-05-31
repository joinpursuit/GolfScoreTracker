//
//  ViewController.m
//  GolfScoreTracker
//
//  Created by Venkat Rao on 5/23/13.
//  Copyright (c) 2013 Venkat Rao. All rights reserved.
//

#import "ViewController.h"
#import "ScorecardViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    //evry object needs to allocated and initialized
    self.strokes = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextHolePressed:(id)sender {

    // add the current count to the array
    //primitive types cannot be added to arrays. the counter is "wrapped" as a NSNumber and then added
    [self.strokes addObject: [NSNumber numberWithInt:self.counter]];

    //reset the counter to 0
    self.counter = 0;

    //change the text label to 0
    [self.currentScore setText: @"0"];
    
}

- (IBAction)scorecardPressed:(id)sender {

    // create, allocate and initialize the view controller we want to show.
    ScorecardViewController *vc = [[ScorecardViewController alloc] initWithNibName:nil bundle:nil];

    // set the scores array to be used
    vc.scores = self.strokes;

    // show the viewcontroller
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (IBAction)addStrokePressed:(id)sender {

    // increment the counter by 1 shot
    self.counter++;

    // change the label to reflect the counter
    // Used placeholder to convert int to string
    [self.currentScore setText: [NSString stringWithFormat: @"%i", self.counter]];


    // calculate total score
    //initialize the total to zero
    int total = 0;
    //use for loop to enumerate array
    for (int i = 0; i < [self.strokes count]; i++) {

        //since only objects can be stored in arrays, we need to get NSNumber and then convert it to int
        NSNumber *number = [self.strokes objectAtIndex:i];
        // adds the int value to total
        total += [number intValue];
    }

    // adds the current score to total
    total += self.counter;

    // resets the label using placeholders
    [self.totalScore setText: [NSString stringWithFormat:@"Total Strokes: %i", total]];
}


@end
