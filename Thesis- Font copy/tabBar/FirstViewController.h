//
//  FirstViewController.h
//  tabBar
//
//  Created by Samir Naimi on 3/7/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface FirstViewController : UIViewController <MKMapViewDelegate>

@property (nonatomic, strong) IBOutlet MKMapView *mapView;

@end
