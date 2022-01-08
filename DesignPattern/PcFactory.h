//
//  PcFactory.h
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import <Foundation/Foundation.h>
#import "Mouse.h"
#import "Keyboard.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PcFactory <NSObject>

- (id<Mouse>)createMouse;
- (id<Keyboard>)createKeyboard;

@end

NS_ASSUME_NONNULL_END
