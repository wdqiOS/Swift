//
//  Book.m
//  19-构造函数
//
//  Created by 汪大强 on 2018/7/10.
//  Copyright © 2018年 汪大强. All rights reserved.
//

#import "Book.h"

@interface Book()

@property(nonatomic,copy)NSString *name;

@end

@implementation Book

-(instancetype)init{
    // 1.调用父类的方法，给父类初始化
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
