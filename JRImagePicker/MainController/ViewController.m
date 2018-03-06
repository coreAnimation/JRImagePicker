//
//  ViewController.m
//  JRImagePicker
//
//  Created by 王潇 on 2017/12/9.
//  Copyright © 2017年 王潇. All rights reserved.
//

#import "ViewController.h"
#import "JRImagePickerController.h"
#import <Photos/Photos.h>
#import "JRAlbumManager.h"
#import "JRAlbum.h"
#import "JRImageListController.h"
#import "Header.h"
#import "JRPickerViewController.h"

@interface ViewController () <JRImageListControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	UIButton *selImage = [[UIButton alloc] initWithFrame:CGRectMake(40, 80, Screen_w - 80, 40)];
	[selImage setTitle:@"打开相册" forState:UIControlStateNormal];
	selImage.backgroundColor = [UIColor orangeColor];
	[self.view addSubview:selImage];
	
	[selImage addTarget:self
				 action:@selector(openPicker)
	   forControlEvents:UIControlEventTouchUpInside];
}

/// 打开相册
- (void)openPicker {

	JRPickerViewController *picVC = [JRPickerViewController pickerViewController];
	picVC.delegate = self;
	[self presentViewController:picVC animated:YES completion:nil];
	
//	UINavigationController *list = [JRImageListController imageListController];
//	[self presentViewController:list animated:YES completion:nil];
}

- (void)imageListController:(JRImageListController *)imageListControler
		finishPickingPhotos:(NSArray<JRAsset *> *)assets
	ifSelectedOriginalPhoto:(BOOL)isSelectOriginalPhoto {
	NSLog(@"======= %zd", assets.count);
}

@end
