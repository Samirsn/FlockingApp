//
//  FourthViewController.h
//  tabBar
//
//  Created by Samir Naimi on 3/7/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourthViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *titleField;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)takePhoto:(id)sender;
- (IBAction)submitButton:(id)sender;

@end
