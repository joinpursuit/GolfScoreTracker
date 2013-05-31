//
//  ScorecardViewController.m
//  GolfScoreTracker
//
//  Created by Venkat Rao on 5/30/13.
//  Copyright (c) 2013 Venkat Rao. All rights reserved.
//

#import "ScorecardViewController.h"

@interface ScorecardViewController ()

@end

@implementation ScorecardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

// this method get called so the table view can figure out how many rows are in the tableview
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // return the total number of objects in the scores array
    return [self.scores count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    // create, allocate and initialize a tableview
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ScoreCell"];

    // set the left text label for the cell
    cell.textLabel.text = [NSString stringWithFormat:@"Hole: %i", indexPath.row + 1];

    // get the number object in the score array. 
    NSNumber * score = self.scores[indexPath.row];

    // sets the left text label for the cell
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", [score intValue]];

    // returns the cell with appropiate labels
    return cell;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (IBAction)dismissPressed:(id)sender {

    // the method dismisses itself 
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
