//
//  ListDetailViewController.m
//  tabBar
//
//  Created by Samir Naimi on 3/8/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import "ListDetailViewController.h"

@interface ListDetailViewController ()

@end

@implementation ListDetailViewController

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
    
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
	// Do any additional setup after loading the view.
    
    _titleLabel1.text = _listDetailModel[0];
_titleLabel1.font = [UIFont fontWithName:@"HelveticaNeue-CondensedBold" size:30];
    _subtitleLabel1.text = _listDetailModel[1];
    _imageView1.image = [UIImage imageNamed:_listDetailModel[2]];
    _subtitleLabel2.text = _listDetailModel[3];
    _breakdownLabel1.text = _listDetailModel[4];
    _distanceLabel.text = _listDetailModel[5];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)directionsButton:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc]
                          
                          initWithTitle:@"Directions"
                          message:@"This function will be available shortly"
                          delegate:nil
                          cancelButtonTitle:@"Done"
                          otherButtonTitles:nil];
    [alert show];

}
@end
