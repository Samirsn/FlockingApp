//
//  ListTableViewController.h
//  tabBar
//
//  Created by Samir Naimi on 3/8/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *listImages;
@property (nonatomic, strong) NSArray *listTitles;
@property (nonatomic, strong) NSArray *listSubtitles;
@property (nonatomic, strong) NSArray *listScores;
@property (nonatomic, strong) NSArray *listBreak;
@property (nonatomic, strong) NSArray *listDist;


@end
