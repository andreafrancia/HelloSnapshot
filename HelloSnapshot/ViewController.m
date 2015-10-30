//
//  ViewController.m
//  HelloSnapshot
//
//  Created by Andrea Francia on 10/30/15.
//  Copyright © 2015 Andrea Francia. All rights reserved.
//

#import "ViewController.h"
#import "PomodoroHistory.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewController {
    PomodoroHistory * _history;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _history = [[PomodoroHistory alloc]init];
    for(int i =0; i < 40; i++) {
        [_history addTimeBoxWithDescription:@"presenation" duration:1500 start:nil];
    }
    self.table.dataSource = _history;
    [self.table registerClass:[UITableViewCell class]
       forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
