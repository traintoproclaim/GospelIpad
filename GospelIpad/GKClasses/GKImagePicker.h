//
//  GKImagePicker.h
//  GKImagePicker
//
//  Created by Georg Kitz on 6/1/12.
//  Copyright (c) 2012 Aurora Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GospelIpadAppDelegate.h"

@protocol GKImagePickerDelegate;

@interface GKImagePicker : NSObject<UIImagePickerControllerDelegate>

{
    UIViewController *containerController ;
     UIPopoverController *popoverController;
    GospelIpadAppDelegate *appdel;

}
@property (nonatomic, retain)GospelIpadAppDelegate *appdel;
@property (nonatomic, retain)UIViewController *containerController ;
@property (nonatomic, retain) UIPopoverController *popoverController;
@property (nonatomic, strong) id<GKImagePickerDelegate> delegate;
@property (nonatomic, assign) CGSize cropSize; //default value is 320x320 (which is exactly the same as the normal imagepicker uses)
@property (nonatomic, strong) UIImagePickerController *imagePickerController;
@property (nonatomic, assign) BOOL resizeableCropArea;

@end


@protocol GKImagePickerDelegate <NSObject>

@optional

/**
 * @method imagePicker:pickedImage: gets called when a user has chosen an image
 * @param imagePicker, the image picker instance
 * @param image, the picked and cropped image
 */
- (void)imagePicker:(GKImagePicker *)imagePicker pickedImage:(UIImage *)image;


/**
 * @method imagePickerDidCancel: gets called when the user taps the cancel button
 * @param imagePicker, the image picker instance
 */
- (void)imagePickerDidCancel:(GKImagePicker *)imagePicker;

@end