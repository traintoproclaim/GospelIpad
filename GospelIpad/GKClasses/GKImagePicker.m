//
//  GKImagePicker.m
//  GKImagePicker
//
//  Created by Georg Kitz on 6/1/12.
//  Copyright (c) 2012 Aurora Apps. All rights reserved.
//

#import "GKImagePicker.h"
#import "GospelIpadViewController.h"
#import "GKImageCropViewController.h"

@interface GKImagePicker ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate, GKImageCropControllerDelegate>
//@property (nonatomic, strong, readwrite) UIImagePickerController *imagePickerController;
- (void)_hideController;
@end

@implementation GKImagePicker
int count=0;
#pragma mark -
#pragma mark Getter/Setter

@synthesize cropSize, delegate, resizeableCropArea;
@synthesize imagePickerController = _imagePickerController;
@synthesize containerController,popoverController,appdel;

#pragma mark -
#pragma mark Init Methods


- (id)init{
    if (self = [super init]) {
        [[NSUserDefaults standardUserDefaults]setInteger:0 forKey:@"noimge"];

       self.cropSize = CGSizeMake(300,300);
        self.resizeableCropArea = NO;
        _imagePickerController = [[UIImagePickerController alloc] init];
             _imagePickerController.delegate = self;
            _imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                          
    }
    return self;
}


# pragma mark -
# pragma mark Private Methods

- (void)_hideController{
    
   // if (![_imagePickerController.presentedViewController isKindOfClass:[UIPopoverController class]]){
        
   //  [self.imagePickerController popViewControllerAnimated:YES];
    [[NSUserDefaults standardUserDefaults]setInteger:1 forKey:@"noimge"];
   [self.delegate imagePicker:self pickedImage:nil];  
    
// } 
  
  

    
}

#pragma mark -
#pragma mark UIImagePickerDelegate Methods

- (void)imagePickerControllerDidCancel:(GKImagePicker *)picker{
    
   if ([self.delegate respondsToSelector:@selector(imagePickerDidCancel:)]) {
      
      [self.delegate imagePickerDidCancel:self];
   
        
  } else {
        
       [self _hideController];
    
   }
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{

    GKImageCropViewController *cropController = [[GKImageCropViewController alloc] init];
  
    //cropController.view.frame=CGRectMake(0, 0, 700, 700);
    cropController.sourceImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    cropController.resizeableCropArea = self.resizeableCropArea;
    cropController.cropSize = self.cropSize;
    cropController.delegate = self;
     cropController.contentSizeForViewInPopover = CGSizeMake(700, 700);
    [picker pushViewController:cropController animated:YES];
    
    
}
- (void)imagePickerController:(GKImageCropViewController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo{
 
}
#pragma mark -
#pragma GKImagePickerDelegate

- (void)imageCropController:(GKImageCropViewController *)imageCropController didFinishWithCroppedImage:(UIImage *)croppedImage{
    
    if ([self.delegate respondsToSelector:@selector(imagePicker:pickedImage:)]) {
        [self.delegate imagePicker:self pickedImage:croppedImage];   
    }
}

@end
