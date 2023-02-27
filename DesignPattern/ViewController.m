//
//  ViewController.m
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "CameraFactory.h"
#import "AzyFactory.h"
#import "XhwFactory.h"
#import "DesignPattern-Swift.h"
#import "XhwCameraFactory.h"
#import "AzyCameraFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
//    id btAlloc = [UIButton alloc];
//    UIButton *bt0 = [btAlloc init];
//    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeSystem];
//    UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeContactAdd];
//
//    NSLog(@"%@", NSStringFromClass([btAlloc class]));
//    NSLog(@"%@", NSStringFromClass([bt0 class]));
//    NSLog(@"%@", NSStringFromClass([bt1 class]));
//    NSLog(@"%@", NSStringFromClass([bt2 class]));
    
//    id arrAlloc = [NSArray alloc];
//    NSArray *arr = [arrAlloc init];
//    id marrAlloc = [NSMutableArray alloc];
//    NSMutableArray *marr = [marrAlloc init];
//    NSLog(@"%@", NSStringFromClass([arrAlloc class]));
//    NSLog(@"%@", NSStringFromClass([arr class]));
//    NSLog(@"%@", NSStringFromClass([marrAlloc class]));
//    NSLog(@"%@", NSStringFromClass([marr class]));
    
//
//    id numAlloc = [NSNumber alloc];
//    NSNumber *num1 = [numAlloc initWithInt:1];
//    NSNumber *num2 = [numAlloc initWithBool:YES];
//    NSNumber *num3 = [numAlloc initWithLong:111111111111111111];
//    NSLog(@"%@", [numAlloc class]);
//    NSLog(@"%@", [num1 class]);
//    NSLog(@"%@", [num2 class]);
//    NSLog(@"%@", [num3 class]);
    
    // 简单工厂
//    id<CameraProtocol> camera = [CameraFactory createCameraWifi:@"xhw"];
//    [camera connect];
//    [camera take];
     
    // 工厂方法
//    id<CameraProtocol>camera = [XhwCameraFactory createCamera];
//    [camera connect];
//    [camera take];
    
    // 抽象工厂
//    AzyFactory *fc = [[AzyFactory alloc] init];
//    id<CameraProtocol> camera = [fc createCamera];
//    [camera connect];
//    id<SpeakerProtocol> speaker = [fc createSpeaker];
//    [speaker connect];
//    [speaker play];
    
    [PatternTest test];
}


@end
