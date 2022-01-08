//
//  HPFactory.m
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import "HPFactory.h"
#import "HPMouse.h"
#import "HPKeyboard.h"

@implementation HPFactory

- (id<Mouse>)createMouse {
    return [[HPMouse alloc] init];
}

- (id<Keyboard>)createKeyboard {
    return [[HPKeyboard alloc] init];
}

@end
