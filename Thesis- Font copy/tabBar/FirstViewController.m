//
//  FirstViewController.m
//  tabBar
//
//  Created by Samir Naimi on 3/7/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import "FirstViewController.h"

#import "ListTableViewController.h"

#import "MyAnnotation.h"
#import "MyAnnotationView.h"
#import "DetailedMapViewController.h"

@interface FirstViewController ()


@end

@implementation FirstViewController
@synthesize mapView;




- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    // Don't create annotation views for the user location annotation     if ([annotation isKindOfClass:[MyAnnotation class]])
    {
        static NSString *myAnnotationId = @"myAnnotation";
        
        // Create an annotation view, but reuse a cached one if available
        MyAnnotationView *annotationView =
        (MyAnnotationView *)[self.mapView
                             dequeueReusableAnnotationViewWithIdentifier:myAnnotationId];
        if(annotationView)
        {
            // Cached view found, associate it with the annotation
            annotationView.annotation = annotation;
        }
        else
        {
            // No cached view were available, create a new one
            annotationView = [[MyAnnotationView alloc] initWithAnnotation:annotation
                                                          reuseIdentifier:myAnnotationId];
        }
        return annotationView;
    }
    // Use a default annotation view for the user location annotation
    return nil;
}
        



- (void)viewDidLoad {
    [super viewDidLoad];
//      self.mapView.showsUserLocation = YES;
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(40.7356, -73.9906),1000,1000);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];


    // Do any additional setup after loading the view, typically from a nib.
    self.mapView.delegate = self;
    
    MyAnnotation *ann1 = [[MyAnnotation alloc]
                          initWithCoordinate: CLLocationCoordinate2DMake(40.7356, -73.9906)
                          title: @"Pillow Fight!"
                          subtitle: @"2 hrs Remain | Jj12@10am"
                          contactInformation: @"90 Upvotes" @"\n" "8 Downvotes"
                          totalScore:@"82"
                          distance:@".2 mi"
                          image:@"louie.jpg"];
    
    MyAnnotation *ann2 = [[MyAnnotation alloc]
                          initWithCoordinate:CLLocationCoordinate2DMake(40.7396, -73.9926)
                          title:@"Free Swing Dancing Lessons"
                          subtitle:@"1hr Remains | Blake@11am"
                          contactInformation:@"87 Upvotes" @"\n" "12 Downvotes"
                          totalScore:@"75"
                          distance:@".3 mi"
                          image:@"louie.jpg"];
    
    MyAnnotation *ann3 = [[MyAnnotation alloc]
                          initWithCoordinate: CLLocationCoordinate2DMake(40.7345, -73.9943)
                          title: @"Farmers Market"
                          subtitle: @"4hrs Remain | Ed@9:30am"
                          contactInformation: @"46 Upvotes" @"\n" "7 Downvotes"
                          totalScore:@"39"
                          distance:@".5 mi"
                          image:@"louie.jpg"];
    
    MyAnnotation *ann4 = [[MyAnnotation alloc]
                          initWithCoordinate:CLLocationCoordinate2DMake(40.7326, -73.9996)
                          title:@"Talent Show"
                          subtitle:@"1hr Remains | Stephanie@1pm"
                          contactInformation:@"50 Upvotes" @"\n" "38 Downvotes"
                          totalScore:@"12"
                          distance:@"1 mi"
                          image:@"louie.jpg"];
    
    MyAnnotation *ann5 = [[MyAnnotation alloc]
                          initWithCoordinate:CLLocationCoordinate2DMake(40.7336, -73.9976)
                          title:@"Jazz Musicians Festival"
                          subtitle:@"1hr Remains | Robby@1pm"
                          contactInformation:@"50 Upvotes" @"\n" "8 Downvotes"
                          totalScore:@"42"
                          distance:@".5 mi"
                          image:@"louie.jpg"];

    MyAnnotation *ann6 = [[MyAnnotation alloc]
                          initWithCoordinate:CLLocationCoordinate2DMake(40.7421, -73.9880)
                          title:@"Louie TV Show Filming"
                          subtitle:@"2hrs Remain | Francis@1pm"
                          contactInformation:@"60 Upvotes" @"\n" "28 Downvotes"
                          totalScore:@"32"
                          distance:@".7 mi"
                          image:@"louie.jpg"];
    
    MyAnnotation *ann7 = [[MyAnnotation alloc]
                          initWithCoordinate:CLLocationCoordinate2DMake(40.7306, -73.9890)
                          title:@"Children's Story Time"
                          subtitle:@"1.5hrs Remain | Nancs@1pm"
                          contactInformation:@"34 Upvotes" @"\n" "3 Downvotes"
                          totalScore:@"31"
                          distance:@".8 mi"
                          image:@"louie.jpg"];
    
    
    NSArray *annotations = [NSArray arrayWithObjects: ann1, ann2, ann3, ann4, ann5, ann6, ann7, nil];
    
    [self.mapView addAnnotations:annotations];
    
    
}





//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//    self.mapView.delegate = self;
//    self.mapView.showsUserLocation = YES;
//
//    
//    
//    MKPointAnnotation *annotation1=[[MKPointAnnotation alloc]init];
//    annotation1.title =@"miami";
//    annotation1.subtitle=@"annotation1";
//    annotation1.coordinate =CLLocationCoordinate2DMake(40.7356, -73.9906);
//    [self.mapView addAnnotation:annotation1];
//    
//    MKPointAnnotation *annotation2=[[MKPointAnnotation alloc]init];
//    annotation2.title =@"den";
//    annotation2.subtitle=@"annotation2";
//    annotation2.coordinate =CLLocationCoordinate2DMake(40.7358, -73.9916);
//    [self.mapView addAnnotation:annotation2];
//    
//    
//    //adding a pin idk
////    MKPointAnnotation *myAnnotation = [[MKPointAnnotation alloc] init];
////    myAnnotation.coordinate = CLLocationCoordinate2DMake(40.7356, -73.9906);
////    myAnnotation.title = @"Matthews Pizza";
////    myAnnotation.subtitle = @"Best Pizza in Town";
////    [self.mapView addAnnotation:myAnnotation];
//   
//   // UIImageView*imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"farmers.png"]];
//    
//    
//    
////    MKPointAnnotation *myAnnotation1 = [[MKPointAnnotation alloc] init];
////    myAnnotation1.coordinate = CLLocationCoordinate2DMake(40.7355, -73.9905);
////    myAnnotation1.title = @"Matthews Pizza";
////    myAnnotation1.subtitle = @"Best Pizza in Town";
////    [self.mapView addAnnotation:myAnnotation1];
//    
//    
//}


-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    DetailedMapViewController *dvc = [[DetailedMapViewController alloc]initWithAnnotation:view.annotation];
    dvc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:dvc animated:YES completion:^{}];
    
}

//- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
//{
   
    
   // MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 1000, 1000);
    //[self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    
    
    // Add an annotation
  // MKPointAnnotation *point = [[MKPointAnnotation alloc] init];

    //point.coordinate = userLocation.coordinate;
    //point.title = @"Where am I?";
//
      //  point.subtitle = @"I'm here!!!";
//    
   // [self.mapView addAnnotation:point];
    
    
//}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
