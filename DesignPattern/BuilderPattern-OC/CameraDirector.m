//
//  CameraDirector.m
//  DesignPattern
//
//  Created by fooww on 2023/2/27.
//

#import "CameraDirector.h"

@implementation CameraDirector

- (void)constuctBuilder:(id<CameraBuilderProtocol>)builder resolution:(NSString *)resolution frameRate:(NSString *)frameRate {
    NSString *config = [NSString stringWithFormat:@"拍摄配置：分辨率=%@，帧率=%@", resolution, frameRate];
    [builder setShootConfig:config];
    [builder buildShootModule];
    [builder buildWifiModule];
    [builder buildStorageModule];
}

- (void)constuctBuilder:(id<CameraBuilderProtocol>)builder {
    [builder buildShootModule];
    [builder buildWifiModule];
    [builder buildStorageModule];
}

@end
