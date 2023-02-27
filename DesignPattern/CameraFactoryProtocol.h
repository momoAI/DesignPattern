//
//  CameraFactoryProtocol.h
//  DesignPattern
//
//  Created by fooww on 2023/2/24.
//

#import <Foundation/Foundation.h>
#import "CameraProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CameraFactoryProtocol <NSObject>

// 实例方法
//- (id<CameraProtocol>)createCamera;

// 类方法
+ (id<CameraProtocol>)createCamera;

@end

NS_ASSUME_NONNULL_END
