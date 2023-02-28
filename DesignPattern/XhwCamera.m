//
//  XhwCamera.m
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import "XhwCamera.h"

@implementation XhwCamera

- (void)connect {
    NSLog(@"xhw camera connect");
    NSLog(@"builder info: %@:%@--%@--%@", _shootModule, _shootConfig, _wifiModule, _storageModule);
}

- (void)take {
    NSLog(@"xhw camera take");
}

@end
