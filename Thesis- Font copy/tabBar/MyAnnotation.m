//
//  MyAnnotation.m
//  tabBar
//
//  Created by Samir Naimi on 3/11/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import "MyAnnotation.h"
#import <MapKit/MapKit.h>

@implementation MyAnnotation: MKPointAnnotation
-(id) initWithCoordinate:(CLLocationCoordinate2D)coord
                   title:(NSString *)title
                subtitle:(NSString *)subtitle
      contactInformation:(NSString *)contactInfo
              totalScore:(NSString *)totalSco
                distance:(NSString *)dist
image:(NSString *)ima
{
    self =[super init];
    if (self) {
        self.coordinate = coord;
        self.title = title;
        self.subtitle = subtitle;
        self.contactInformation = contactInfo;
        self.totalScore = totalSco;
        self.distance = dist;
        self.image = ima;
    }
    return self;
}



@end
