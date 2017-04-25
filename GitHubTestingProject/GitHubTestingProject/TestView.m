//
//  TestView.m
//  testProject
//
//  Created by 王鑫 on 17/4/25.
//  Copyright © 2017年 王鑫. All rights reserved.
//

#import "TestView.h"

#define color(x) [UIColor colorWithRed:(x)/255.0 green:(x)/255.0 blue:(x)/255.0 alpha:1.0]
#define kRandomColor color(arc4random_uniform(256))
@implementation TestView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)init
{
    if (self = [super init]) {
    self.backgroundColor = kRandomColor;
        self.frame = CGRectMake(arc4random_uniform(300), arc4random_uniform(300), 50, 50);
    }
    return self;
}

@end
