//
//  ViewController.m
//  CCCache
//
//  Created by ColeXm on 16/3/17.
//  Copyright © 2016年 ColeXm. All rights reserved.
//

#import "ViewController.h"
#import "CCCache.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    Model *model = [Model new];
    model.test1 = @"111";
    model.test2 = @[@"ss",@"tff"];
    
    [[CCCache defaultManager]setObject:model forKey:@"model"];
    
    
    id result = [[CCCache defaultManager]objectForKey:@"model"];
    
    NSLog(@"%@",result);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
