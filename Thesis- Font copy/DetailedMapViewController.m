//
//  DetailedMapViewController.m
//  tabBar
//
//  Created by Samir Naimi on 3/12/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import "DetailedMapViewController.h"

@interface DetailedMapViewController ()

@end

@implementation DetailedMapViewController

-(id)initWithAnnotation:(MyAnnotation *)annotation{
    self =[super init];
    if (self) {
        self.annotation =annotation;
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.titleLabel.text = self.annotation.title;
    self.subtitleLabel.text =self.annotation.subtitle;
    self.contactInformationLabel.text =self.annotation.contactInformation;
    self.totalScoreLabel.text = self.annotation.totalScore;
    self.distanceLabel.text = self.annotation.distance;
    self.imageView = self.annotation.image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
  
}



@end
