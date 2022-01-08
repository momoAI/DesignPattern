//
//  CameraFactory.m
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import "CameraFactory.h"

@implementation CameraFactory

+ (id<Camera>)createCameraWifi:(NSString *)wifi {
    if ([wifi isEqualToString:@"xhw"]) {
        return [[XhwCamera alloc] init];
    } else if ([wifi isEqualToString:@"azy"]) {
        return [[AzyCamera alloc] init];
    }
    
    return nil;
}

@end
