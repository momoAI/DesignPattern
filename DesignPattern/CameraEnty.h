//
//  CameraEnty.h
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import <Foundation/Foundation.h>
#import "Camera.h"

NS_ASSUME_NONNULL_BEGIN

@interface CameraEnty : NSObject<Camera>

+ (instancetype)cameraWithWifi:(NSString *)wifi;

@end

NS_ASSUME_NONNULL_END
