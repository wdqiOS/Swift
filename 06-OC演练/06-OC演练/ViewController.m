//
//  ViewController.m
//  06-OC演练
//
//  Created by 汪大强 on 2018/7/7.
//  Copyright © 2018年 汪大强. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 如果初始化指定容量，可以避免插入数据时，重复分配空间，效率会高一点点
    NSMutableArray *arraym = [NSMutableArray arrayWithCapacity:10];
    
    [self demoSwitch];
    
    UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 100, 40)];
    l.text = @"汪大强";
    [self.view addSubview:l];
    
    {
        UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 100, 40)];
        l.text = @"您好";
        [self.view addSubview:l];
    }
    
    // 扩展知识点：在一些老的代码中会有
    // {}包装代码，（）是表示执行
    // 工作中，看到的最多的表现代码是 UITableview
    UILabel *myLabel = ({
        UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 280, 100, 40)];
        l.text = @"您好，世界";
        [self.view addSubview:l];
        // 最末尾的 l 会给 mylabel 设置数值
        l;
    });
    
    UITableView *tv = ({
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        /*
            具体代码
         */
        // 类型转换
        // (WDQtableCell *)[tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:NSIndexPath];
        [self.view addSubview:tableView];
        
        tableView;
    });
}


-(void)demoSwitch{
    /**
        1.分支值类型必须是 整数
        2.每个语句都需要一个 break
        3.如果要穿透 case 后去掉break
        4.如果要定义局部变量 需要{}
        5.OC 中{}可以限制变量的作用域
     */
    NSInteger num = 5;
    switch (num) {
        case 9:
        case 10:
        {
            NSString *name = @"汪大强";
            NSLog(@"优 %@", name);
        }
            break;
        default:
            NSLog(@"一般");
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
