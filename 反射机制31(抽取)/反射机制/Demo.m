//
//  Demo.m
//  反射机制
//
//  Created by 汪大强 on 2018/7/14.
//  Copyright © 2018年 汪大强. All rights reserved.
//

#import "Demo.h"

@implementation Demo
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSString *str = @"hello world";
        // 在以前的Xcode 中是方法，OC 中如果是方法，有返回值，没有参数，都可以直接“.”
        // 和 Swift 中的计算型属性类似 ，用 ‘.’ 便于阅读
        NSLog(@"%zd", str.length);
        
        // copy 就是方法
        NSString *str1 = str.copy;
    }
    return self;
}
@end
