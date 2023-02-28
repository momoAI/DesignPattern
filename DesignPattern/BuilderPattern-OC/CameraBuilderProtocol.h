//
//  CameraBuilderProtocol.h
//  DesignPattern
//
//  Created by fooww on 2023/2/27.
//

#import <Foundation/Foundation.h>
#import "CameraProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CameraBuilderProtocol <NSObject>

- (void)buildShootModule;       // 拍摄模块
- (void)buildWifiModule;       // wifi连接模块
- (void)buildStorageModule;   // 存储模块

- (void)setShootConfig:(NSString *)config;

// 返回构建对象
- (id<CameraProtocol>)build;

@end

NS_ASSUME_NONNULL_END
