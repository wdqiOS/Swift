//
//  DemoViewController.m
//  17-循环引用
//
//  Created by 汪大强 on 2018/7/9.
//  Copyright © 2018年 汪大强. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@property(nonatomic, copy)void (^ completionCallBack)(void);

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 解除循环引用1: __weak
//    __weak typeof(self) weakself = self;
//    [self loadData:^{
//        NSLog(@"%@", weakself.view);
//    }];
    
    // 解除循环引用2：__unsafe_unretained
    // 高级 iOS 程序员如果需要自行管理内存，可以考虑使用，但是不建议使用
    // Thread 1: EXC_BAD_ACCESS ( 坏内存访问，野指针访问
    // 在MRC中如果要弱引用对象都是使用assign 不会增加引用计数，但是一旦对象被释放，地址不会改变，继续访问，出现野指针
    // 在 ARC weak，本质上是一个观察者模式，一旦发现对象被释放，会自动将地址设置为nil，更加安全
    // 效率：weak的效率会略微差一些

    
    __unsafe_unretained typeof(self) weakself = self;
    
    [self loadData:^{
        NSLog(@"%@", weakself.view);
    }];
    
    
    
}

-(void)loadData:(void (^)(void))completion {
    // 使用属性记录 block
    self.completionCallBack = completion;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"耗时操作 %@", [NSThread currentThread]);
        
        [NSThread sleepForTimeInterval:2];
        dispatch_async(dispatch_get_main_queue(), ^{
            completion();
        });
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
