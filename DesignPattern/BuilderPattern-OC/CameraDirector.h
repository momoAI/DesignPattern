//
//  CameraDirector.h
//  DesignPattern
//
//  Created by fooww on 2023/2/27.
//

#import <Foundation/Foundation.h>
#import "CameraBuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface CameraDirector : NSObject

- (void)constuctBuilder:(id<CameraBuilderProtocol>)builder;

- (void)constuctBuilder:(id<CameraBuilderProtocol>)builder resolution:(NSString *)resolution frameRate:(NSString *)frameRate;

@end

NS_ASSUME_NONNULL_END
