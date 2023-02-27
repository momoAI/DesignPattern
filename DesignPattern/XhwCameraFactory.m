//
//  XhwCameraFactory.m
//  DesignPattern
//
//  Created by fooww on 2023/2/24.
//

#import "XhwCameraFactory.h"
#import "XhwCamera.h"

@implementation XhwCameraFactory

+ (id<CameraProtocol>)createCamera {
    return [[XhwCamera alloc] init];
}

@end
