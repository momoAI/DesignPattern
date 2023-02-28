//
//  XhwCameraBuilder.m
//  DesignPattern
//
//  Created by fooww on 2023/2/27.
//

#import "XhwCameraBuilder.h"
#import "XhwCamera.h"


@interface XhwCameraBuilder ()

@property (nonatomic, strong) XhwCamera *camera;


@end


@implementation XhwCameraBuilder

- (instancetype)init {
    if (self = [super init]) {
        _camera = [[XhwCamera alloc] init];
        _camera.shootConfig = @"拍摄配置：默认配置";
    }
    
    return self;
}

- (void)buildShootModule {
    _camera.shootModule = @"拍摄模块初始完成";
}

- (void)buildStorageModule {
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
