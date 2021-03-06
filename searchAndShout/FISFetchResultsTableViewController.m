//
//  FISFetchResultsTableViewController.m
//  searchAndShout
//
//  Created by Amitai Blickstein on 8/27/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISFetchResultsTableViewController.h"
#import "FISDanceMove.h"
#import "FISDataStore.h"

@interface FISFetchResultsTableViewController ()

@end

@implementation FISFetchResultsTableViewController {
    FISDataStore *dataStore;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    dataStore = [FISDataStore sharedDataStore];

        // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.searchResults.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"searchResultCell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSLog(@"%@", [self.searchResults description]);
    NSError *error = nil;
    FISDanceMove *danceMove = (FISDanceMove*)[dataStore.managedObjectContext existingObjectWithID:self.searchResults[indexPath.row][0] error:&error];
    NSString *danceStep = self.searchResults[indexPath.row][1];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Search Result: %@", [danceMove valueForKey:danceStep]];
    cell.detailTextLabel.text = [NSString stringWithFormat: @"Dance : %@", [danceMove valueForKey:@"name"]];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
