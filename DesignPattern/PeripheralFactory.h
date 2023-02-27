//
//  PeripheralFactory.h
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import <Foundation/Foundation.h>
#import "CameraProtocol.h"
#import "SpeakerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PeripheralFactory <NSObject>

- (id<CameraProtocol>)createCamera;
- (id<SpeakerProtocol>)createSpeaker;

@end

NS_ASSUME_NONNULL_END
