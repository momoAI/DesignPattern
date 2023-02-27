//
//  AzyCameraFactory.m
//  DesignPattern
//
//  Created by fooww on 2023/2/24.
//

#import "AzyCameraFactory.h"
#import "AzyCamera.h"

@implementation AzyCameraFactory

+ (id<CameraProtocol>)createCamera {
    return [[AzyCamera alloc] init];
}

@end
