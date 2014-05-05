//
//  DetailedMapViewController.h
//  tabBar
//
//  Created by Samir Naimi on 3/12/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyAnnotation.h"

@interface DetailedMapViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *contactInformationLabel;
@property (strong, nonatomic) IBOutlet UILabel *totalScoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *distanceLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) MyAnnotation *annotation;
-(id)initWithAnnotation:(MyAnnotation *)annotation;
@end
