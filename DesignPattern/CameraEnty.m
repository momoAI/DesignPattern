//
//  CameraEnty.m
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import "CameraEnty.h"
#import "XhwCamera.h"
#import "AzyCamera.h"

@implementation CameraEnty

+ (instancetype)cameraWithWifi:(NSString *)wifi {
    if ([wifi isEqualToString:@"xhw"]) {
        return [[XhwCamera alloc] init];
    } else if ([wifi isEqualToString:@"azy"]) {
        return [[AzyCamera alloc] init];
    }
    
    return nil;
}

@end
