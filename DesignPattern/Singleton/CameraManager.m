//
//  CameraManager.m
//  DesignPattern
//
//  Created by fooww on 2023/3/1.
//

#import "CameraManager.h"

@implementation CameraManager

+ (CameraManager *)defaultManager {
    static CameraManager *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (shareInstance == nil) {
            shareInstance = [[super allocWithZone:nil] init];
        }
    });
    
    return  shareInstance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [CameraManager defaultManager];
}

- (instancetype)init {
    NSAssert(NO, @"There can only be one CameraManager instance.");
    // 或者
//    [NSException raise:NSInternalInconsistencyException format:@"There can only be one CameraManager instance."];
    
    return nil;
}

@end
