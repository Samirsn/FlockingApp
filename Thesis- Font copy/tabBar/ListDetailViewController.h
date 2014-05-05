//
//  ListDetailViewController.h
//  tabBar
//
//  Created by Samir Naimi on 3/8/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *titleLabel1;
@property (strong, nonatomic) IBOutlet UILabel *subtitleLabel1;
@property (strong, nonatomic) IBOutlet UILabel *subtitleLabel2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UILabel *breakdownLabel1;
@property (strong, nonatomic) IBOutlet UILabel *distanceLabel;

@property (strong, nonatomic) NSArray *listDetailModel;
- (IBAction)directionsButton:(id)sender;

@end
