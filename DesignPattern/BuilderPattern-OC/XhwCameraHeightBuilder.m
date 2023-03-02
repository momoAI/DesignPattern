//
//  XhwCameraBuilder.m
//  DesignPattern
//
//  Created by fooww on 2023/2/27.
//

#import "XhwCameraHeightBuilder.h"
#import "XhwCamera.h"


@interface XhwCameraHeightBuilder ()

@property (nonatomic, strong) XhwCamera *camera;


@end


@implementation XhwCameraHeightBuilder

- (instancetype)init {
    if (self = [super init]) {
        _camera = [[XhwCamera alloc] init];
    }
    
    return self;
}

- (void)buildShootModule {
    _camera.shootConfig = @"拍摄配置：分辨率=1280x720，帧率=30";
    _camera.shootModule = @"拍摄模块初始完成";
}

- (void)buildStorageModule {
    // ...默认高级配置
    _camera.storageModule = @"存储模块初始完成";
}

- (void)buildWifiModule {
    _camera.wifiModule = @"wifi模块初始完成";
}

- (nonnull id<CameraProtocol>)build {
    return _camera;
}

- (void)setShootConfig:(NSString *)config {
    _camera.shootConfig = config;
}

@end
