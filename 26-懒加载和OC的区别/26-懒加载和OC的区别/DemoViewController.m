//
//  DemoViewController.m
//  26-懒加载和OC的区别
//
//  Created by 汪大强 on 2018/7/13.
//  Copyright © 2018年 汪大强. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@property(nonatomic, strong)UILabel *label;

@end

@implementation DemoViewController

-(UILabel *)label{
    // 如果_label = nil 就会创建
    if (_label == nil) {
        _label = [[UILabel alloc] init];
        
        _label.text = @"hello world";
        [_label sizeToFit];
        _label.center = self.view.center;
    }
    return _label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.label];
    
    // 释放label
    _label = nil;
    
    // 会再次调用懒加载的代码
    NSLog(@"%@", self.label);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    // 接收到内存警告，可以释放视图
    // iOS6.0 之后，不会再释放视图，视图会始终保留
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
