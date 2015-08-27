//
//  FISSearchViewController.m
//  searchAndShout
//
//  Created by Joe Burgess on 7/2/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISSearchViewController.h"
#import <FlatUIKit.h>
#import <MessageBarManager.h>
#import "FISDataStore.h"
#import "FISDanceMove.h"

#define DBLG NSLog(@"%@ reporting!", NSStringFromSelector(_cmd));


@interface FISSearchViewController ()
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet FUISegmentedControl *dancemoveSegmentedControl;

@end

@implementation FISSearchViewController

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
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenSeaColor];
//    self.dancemoveSegmentedControl.backgroundColor = [UIColor midnightBlueColor];
    
    self.dancemoveSegmentedControl.selectedFont        = [UIFont boldFlatFontOfSize:16];
    self.dancemoveSegmentedControl.selectedFontColor   = [UIColor cloudsColor];
    self.dancemoveSegmentedControl.deselectedFont      = [UIFont flatFontOfSize:16];
    self.dancemoveSegmentedControl.deselectedFontColor = [UIColor cloudsColor];
    self.dancemoveSegmentedControl.selectedColor       = [UIColor pumpkinColor];
    self.dancemoveSegmentedControl.deselectedColor     = [UIColor tangerineColor];
    self.dancemoveSegmentedControl.disabledColor       = [UIColor midnightBlueColor];
    self.dancemoveSegmentedControl.dividerColor        = [UIColor midnightBlueColor];
    self.dancemoveSegmentedControl.cornerRadius        = 5.0;
    
    self.searchBar.backgroundColor = [UIColor midnightBlueColor];    
    
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    [searchBar resignFirstResponder];
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
        // Fetch ALL the data...
    FISDataStore *sharedStore = [FISDataStore sharedDataStore];
//    NSLog(@"%@", [sharedStore.dances description]);
    
        // Detect the chosen search parameters...
    NSUInteger segIdx = self.dancemoveSegmentedControl.selectedSegmentIndex;
    NSString *searchKey = [[self.dancemoveSegmentedControl titleForSegmentAtIndex:segIdx] lowercaseString];
    
    NSMutableArray *searchResults = [NSMutableArray new];
    
        //E.g., if dance[@"name"] contains:@"Twi"
    for (FISDanceMove *danceMove in sharedStore.dances) {
        if ([(NSString*)danceMove[searchKey] containsString:[searchBar.text lowercaseString]]) {
            [searchResults addObject:dance[searchKey]];
        }
    }
    
    NSLog(@"searchResults: %@", [searchResults description]);
    
    
        //search
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
