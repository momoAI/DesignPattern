//
//  XhwFactory.m
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import "XhwFactory.h"
#import "XhwCamera.h"
#import "XhwSpeaker.h"

@implementation XhwFactory


- (nonnull id<CameraProtocol>)createCamera {
    return [[XhwCamera alloc] init];
}

- (nonnull id<SpeakerProtocol>)createSpeaker {
    return [[XhwSpeaker alloc] init];
}

@end
