//
//  CameraFactory.h
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import <Foundation/Foundation.h>
#import "XhwCamera.h"
#import "AzyCamera.h"

NS_ASSUME_NONNULL_BEGIN

@interface CameraFactory : NSObject

+ (id<CameraProtocol>)createCameraWifi:(NSString *)wifi;

@end

NS_ASSUME_NONNULL_END
