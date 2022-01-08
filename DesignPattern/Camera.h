//
//  Camera.h
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Camera <NSObject>

@optional
- (void)connect;
- (void)take;

@end

NS_ASSUME_NONNULL_END
