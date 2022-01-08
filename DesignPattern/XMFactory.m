//
//  XMFactory.m
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import "XMFactory.h"
#import "XMMouse.h"
#import "XMKeyboard.h"

@implementation XMFactory

- (id<Mouse>)createMouse {
    return [[XMMouse alloc] init];
}

- (id<Keyboard>)createKeyboard {
    return [[XMKeyboard alloc] init];
}

@end
