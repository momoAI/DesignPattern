//
//  AzyFactory.m
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import "AzyFactory.h"
#import "AzyCamera.h"
#import "AzySpeaker.h"

@implementation AzyFactory

- (nonnull id<CameraProtocol>)createCamera {
    return [[AzyCamera alloc] init];
}

- (nonnull id<SpeakerProtocol>)createSpeaker {
    return [[AzySpeaker alloc] init];
}


@end
