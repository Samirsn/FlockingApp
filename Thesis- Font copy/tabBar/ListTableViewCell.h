//
//  ListTableViewCell.h
//  tabBar
//
//  Created by Samir Naimi on 3/8/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *listImage;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *distLabel;

@property (strong, nonatomic) IBOutlet UILabel *subtitleLabel;
@end
