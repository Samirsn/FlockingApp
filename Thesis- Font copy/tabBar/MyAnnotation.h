//
//  MyAnnotation.h
//  tabBar
//
//  Created by Samir Naimi on 3/11/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface MyAnnotation : MKPointAnnotation

@property (nonatomic, strong) NSString* contactInformation;
@property (nonatomic, strong) NSString* totalScore;
@property (nonatomic, strong) NSString* distance;
@property (nonatomic, strong) NSString* image;

-(id)initWithCoordinate:(CLLocationCoordinate2D)coord
                  title:(NSString *)title
               subtitle:(NSString *)subtitle
     contactInformation:(NSString*)contactInfo
totalScore:(NSString*)totalSco
distance:(NSString*)dist
                  image:(NSString*)ima;



@end
