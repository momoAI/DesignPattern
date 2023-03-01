//
//  CameraManager.h
//  DesignPattern
//
//  Created by fooww on 2023/3/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CameraManager : NSObject

+ (CameraManager *)defaultManager;

//+ (instancetype) alloc __attribute__((unavailable("call sharedInstance instead")));
//+ (instancetype) new __attribute__((unavailable("call sharedInstance instead")));
//- (instancetype) copy __attribute__((unavailable("call sharedInstance instead")));
//- (instancetype) mutableCopy __attribute__((unavailable("call sharedInstance instead")));

@end

NS_ASSUME_NONNULL_END
