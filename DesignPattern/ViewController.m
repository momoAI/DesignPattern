//
//  ViewController.m
//  DesignPattern
//
//  Created by luxu on 2021/12/30.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "CameraFactory.h"
#import "CameraEnty.h"
#import "XMFactory.h"
#import "HPFactory.h"
#import "DesignPattern-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    id bt = [UIButton alloc];
//    UIButton *bt0 = [bt init];
//    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeSystem];
//    UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeContactAdd];
//
//    NSLog(@"%@", NSStringFromClass(object_getClass(bt)));
//    NSLog(@"%@", NSStringFromClass(object_getClass(bt0)));
//    NSLog(@"%@", NSStringFromClass(object_getClass(bt1)));
//    NSLog(@"%@", NSStringFromClass(object_getClass(bt2)));
    
    
//    id arr = [NSArray alloc];
//    id marr = [NSMutableArray alloc];
//    NSArray *arr1 = [arr init];
//    NSMutableArray *marr1 = [marr init];
//    NSLog(@"%@", NSStringFromClass([arr class]));
//    NSLog(@"%@", NSStringFromClass([arr1 class]));
//    NSLog(@"%@", NSStringFromClass([marr class]));
//    NSLog(@"%@", NSStringFromClass([marr1 class]));
    
    
//    NSNumber *num1 = [NSNumber numberWithInt:1];
//    NSNumber *num2 = [NSNumber numberWithBool:YES];
//    NSNumber *num3 = [NSNumber numberWithLongLong:111111111111111111];
//    NSLog(@"%@", [num1 class]);
//    NSLog(@"%@", [num2 class]);
//    NSLog(@"%@", object_getClass(num3));
    
    // 简单工厂
//    id<Camera> camera = [CameraFactory createCameraWifi:@"xhw"];
//    [camera connect];
//    [camera take];
    
//    CameraEnty *camera = [CameraEnty cameraWithWifi:@"xhw"];
//    [camera connect];
//    [camera take];
    
    // 抽象工厂
//    XMFactory *fc = [[XMFactory alloc] init];
//    id<Mouse> mouse = [fc createMouse];
//    id<Keyboard> keyboard = [fc createKeyboard];
//    [mouse mouseClick];
//    [keyboard keyboardPan];
    
    [PatternTest test];
}


@end
