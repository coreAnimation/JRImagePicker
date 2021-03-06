//
//  JRAsset.h
//  JRImagePicker
//
//  Created by 王潇 on 2018/2/7.
//  Copyright © 2018年 王潇. All rights reserved.
//

#import <Photos/Photos.h>

@class PHAsset;

typedef enum : NSUInteger {
	JRAssetTypePhoto,
	JRAssetTypeLivePhoto,
	JRAssetTypeGif,
	JRAssetTypeVideo,
	JRAssetTypeAudio,
} JRAssetType;


@interface JRAsset : PHAsset

/**
 是否被选择
 */
@property (nonatomic, assign) BOOL	isSelected;

/**
 多媒体资源对象
 */
@property (nonatomic, strong) PHAsset	*asset;

/**
 封面图
 */
@property (nonatomic, strong) UIImage	*thumbImage;

/**
 原图
 */
@property (nonatomic, strong) UIImage	*sourceImage;

/**
 原始数据
 */
@property (nonatomic, strong) NSData	*sourceData;

/**
 资源类型
 */
@property (nonatomic, assign) JRAssetType	type;


/// 获取缩略图
- (void)setThumbImageAccomplist:(void (^)(UIImage *result, NSDictionary *info))accomplish;

/// 获取原图
- (void)getSoucreImage:(void (^)(UIImage *result, NSDictionary *info))accomplish;

@end
