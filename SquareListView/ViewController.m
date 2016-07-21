//
//  ViewController.m
//  SquareListView
//
//  Created by Smile on 16/7/21.
//  Copyright © 2016年 llbt. All rights reserved.
//

#import "ViewController.h"
#import "SquareView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *array  = @[@{@"key":@"杨高南路",@"value":@"1.png"},
                        @{@"key":@"世纪大道",@"value":@"1.png"},
                        @{@"key":@"东方路",@"value":@"1.png"},
                        @{@"key":@"潍坊路",@"value":@"1.png"},
                        @{@"key":@"南京东路",@"value":@"1.png"}];
    SquareView *square = [[SquareView alloc]initWithArray:array];
    square.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:square];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
