//
//  MyAnnotationView.m
//  tabBar
//
//  Created by Samir Naimi on 3/12/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//


//The only reason I made this custom annotation view class is to override the initWithAnnotation:resuseIdentifier: method. There’s where all the customization takes place.


#import "MyAnnotationView.h"

@implementation MyAnnotationView


- (id)initWithAnnotation:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self)
    {
        UIImage *myImage = [UIImage imageNamed:@"pin.png"];
        self.image = myImage;
        self.frame = CGRectMake(0, 0, 20, 20);
        // Use contentMode to ensure best scaling of image
        self.contentMode = UIViewContentModeScaleAspectFill;
        // Use centerOffset to adjust the position of the image
    
        
        self.centerOffset = CGPointMake(1, 1);
        
        self.canShowCallout = YES;
        
        
                    }
    UIImage *myImage = [UIImage imageNamed:@"PillowFight.png"];
    
    // Left callout accessory view
    UIImageView *leftAccessoryView = [[UIImageView alloc] initWithImage:myImage];
    
    leftAccessoryView.frame = CGRectMake(0, 0, 40, 40);
    leftAccessoryView.contentMode = UIViewContentModeScaleAspectFill;
    self.leftCalloutAccessoryView = leftAccessoryView;
    // Right callout accessory view
    self.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];

    return self;
}


@end
