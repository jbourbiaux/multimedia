//
//  FirstViewController.m
//  multimedia
//
//  Created by s608964 on 03/04/2015.
//  Copyright (c) 2015 AF. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *resultatImage;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage* image=(UIImage *)info[UIImagePickerControllerOriginalImage];
    [picker dismissViewControllerAnimated:YES completion:nil];
    self.resultatImage.image=image;
}

- (IBAction)prisePhoto:(id)sender {
    
    UIImagePickerController* imagePicker=[[UIImagePickerController alloc] init];
    
    //imagePicker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.sourceType=UIImagePickerControllerSourceTypeCamera;
    imagePicker.delegate=self;
    [self presentModalViewController:imagePicker animated:YES];

}

@end
