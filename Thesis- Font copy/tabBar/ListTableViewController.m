//
//  ListTableViewController.m
//  tabBar
//
//  Created by Samir Naimi on 3/8/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import "ListTableViewController.h"
#import "ListTableViewCell.h"
#import "ListDetailViewController.h"


@interface ListTableViewController ()

@end

@implementation ListTableViewController


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowListDetails"])
    {
        
        
        ListDetailViewController *detailViewController =
        [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView
                                    indexPathForSelectedRow];
        
        long row = [myIndexPath row];
        
        detailViewController.listDetailModel = @[_listTitles[row],_listSubtitles[row], _listImages[row], _listScores[row], _listBreak[row], _listDist[row]];
    }
}


- (id)initWithStyle:(UITableViewStyle)style
{
    
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.navigationController.navigationBar setBarTintColor:[UIColor yellowColor]];


    
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"poly.png"] forBarMetrics:UIBarMetricsDefault];
    // hide sstatus bar
  //[[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [super viewDidLoad];
    _listTitles = @[@"Pillow Fight!",
                  @"Swing Dancing Lessons",
                  @"Farmers Market",
                  @"Talent Show",
                    @"Louie TV Show Filming",
                  @"Break Dancers",
                    @"Hunger Games Signing",
                    @"Children's Story Time"];
    
    _listSubtitles = @[@"2 hrs Remain | Jj12@10am",
                   @"1hr Remains | Blake@11am",
                   @"4hrs Remain | Ed@9:30am",
                   @"1hr Remains | Stephanie@1pm",
                   @"1.5hrs Remain | StacieK@11am",
                    @"1hr Remains | JakieK@12pm",
                    @"2.5hrs Remain | Marcey@10am",
                   @"2.5hrs Remain | KenEdE@10am"
                       ];
    
    _listImages = @[@"PillowFight.png",
                   @"Dancing.png",
                   @"farmers.png",
                   @"talent.jpg",
                   @"louie.jpg",
                    @"break.jpg",
                    @"signing.jpg",
                    @"story.jpg"];
    
    _listScores = @[@"82",
                    @"72",
                    @"63",
                    @"23",
                    @"49",
                    @"5",
                    @"4",
                    @"3"];
    
    _listBreak = @[@"90 Upvotes" @"\n" "8 Downvotes",
                    @"80 Upvotes" @"\n" "8 Downvotes",
                    @"76 Upvotes" @"\n" "13 Downvotes",
                    @"42 Upvotes" @"\n" "19 Downvotes",
                   @"70 Upvotes" @"\n" "21 Downvotes",
                    @"5 Upvotes" @"\n" "0 Downvotes",
                   @"5 Upvotes" @"\n" "1 Downvote",
                   @"3 Upvotes" @"\n" "0 Downvotes"];
    _listDist = @[@"1 mi",
                    @".5 mi",
                    @".2 mi",
                    @".3 mi",
                    @".1 mi",
                    @"1 mi",
                    @".4 mi",
                    @".3 mi"];

    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return _listTitles.count;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    return cell;
//}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"listTableCell";
    ListTableViewCell *cell = [tableView
                              dequeueReusableCellWithIdentifier:CellIdentifier
                              forIndexPath:indexPath];
    
    // Configure the cell...
    
    long row = [indexPath row];
    
    cell.titleLabel.text = _listTitles[row];
    cell.subtitleLabel.text = _listSubtitles[row];
    cell.listImage.image = [UIImage imageNamed:_listImages  [row]];
    cell.scoreLabel.text = _listScores[row];
    cell.distLabel.text = _listDist[row];

    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
