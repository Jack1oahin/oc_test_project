//
//  ViewController.m
//  testProject
//
//  Created by 王鑫 on 17/4/25.
//  Copyright © 2017年 王鑫. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIView *view1 = [TestView new ];
//    UIView *view2 = [TestView new ];
//    UIView *view3 = [TestView new ];
//    
//    NSArray *viewArr = @[view1, view2, view3];
//    for (UIView *v  in viewArr) {
//        [self.view addSubview:v];
//    }
    
    
//    UISegmentedControl *seg = [[UISegmentedControl alloc]initWithItems:@[@"One",@"Two"]];
//    seg.frame = CGRectMake(50, 50, 100, 50);
//    seg.selectedSegmentIndex = 0;
//    [self.view addSubview:seg];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(self.view.bounds.size.width - 50, 20, 50, 50);
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(btnTest ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(btnTest) userInfo:nil repeats:YES];
  
}

-(void)btnTest
{
//    v0  v1  a = 10 pixel / s; t = 1/30
TestView *view = [TestView new];
    [self.view addSubview:view];
    __block float deltaS = 0, a = 98000;
    [NSTimer scheduledTimerWithTimeInterval:1/30.0 repeats:YES block:^(NSTimer * _Nonnull timer) {

        CGRect frame = view.frame;
            frame.origin.y += a * pow(1/30.0, 2);  //a * t^2
            view.frame = frame;
            
            if (deltaS >= self.view.bounds.size.height) {
                [timer invalidate];
            }
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
