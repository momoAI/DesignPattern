//
//  XhwCamera.h
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import <Foundation/Foundation.h>
#import "CameraProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface XhwCamera : NSObject<CameraProtocol>

@property (nonatomic, strong) NSString *shootModule;
@property (nonatomic, strong) NSString *wifiModule;
@property (nonatomic, strong) NSString *storageModule;

@property (nonatomic, strong) NSString *shootConfig;

@end

NS_ASSUME_NONNULL_END
