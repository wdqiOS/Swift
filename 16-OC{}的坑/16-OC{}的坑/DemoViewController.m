//
//  DemoViewController.m
//  16-OC{}的坑
//
//  Created by 汪大强 on 2018/7/9.
//  Copyright © 2018年 汪大强. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *l = [[UILabel alloc] init];
    [self.view addSubview:l];
    
    // 区分变量作用域
    {
        UILabel *l = [[UILabel alloc] init];
        [self.view addSubview:l];
    }
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
