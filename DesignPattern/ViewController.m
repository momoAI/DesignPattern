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
#import "CameraDirector.h"
#import "XhwCameraBuilder.h"
#import "XhwCameraHeightBuilder.h"
#import "CameraManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    // 单例模式
//    NSNotificationCenter *c = [NSNotificationCenter defaultCenter];
//    NSNotificationCenter *c1 = [NSNotificationCenter defaultCenter];
//    NSNotificationCenter *c2 = [[NSNotificationCenter alloc] init];
//    NSFileManager *f = [NSFileManager defaultManager];
//    NSFileManager *f1 = [NSFileManager defaultManager];
//    NSFileManager *f2 = [[NSFileManager alloc] init];
////    UIApplication *p = [UIApplication sharedApplication];
////    UIApplication *p1 = [[UIApplication alloc] init];
////    UIApplication *p2 = [[UIApplication alloc] init];
//
//    CameraManager *mg = [CameraManager defaultManager];
//    CameraManager *mg1 = [CameraManager defaultManager];
//    CameraManager *mg2 = [[CameraManager alloc] init];
//
    
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
    
    // 建造者
    // 1. 默认相机
//    XhwCameraBuilder *builder = [[XhwCameraBuilder alloc] init];
//    CameraDirector *director = [[CameraDirector alloc] init];
//    [director constuctBuilder:builder];
//    id<CameraProtocol> camera = [builder build];
//    [camera connect];
//    // 2. 高配相机
//    XhwCameraHeightBuilder *builderH = [[XhwCameraHeightBuilder alloc] init];
//    [director constuctBuilder:builderH];
//    id<CameraProtocol> cameraH = [builderH build];
//    [cameraH connect];
    
    [PatternTest test];
    
    [[NSInvocation alloc] init];
    [[NSUndoManager alloc] init];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    ViewControllerA *a = [[ViewControllerA alloc] init];
    [self presentViewController:a animated:YES completion:nil];
}

@end
