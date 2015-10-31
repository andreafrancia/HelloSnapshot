//
//  PomodoroHistory_SnapshotTests.m
//  HelloSnapshot
//
//  Created by Andrea Francia on 10/30/15.
//  Copyright © 2015 Andrea Francia. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import "PomodoroHistory.h"

@interface PomodoroHistory_SnapshotTests : FBSnapshotTestCase

@end

@implementation PomodoroHistory_SnapshotTests {
    PomodoroHistory * history;
}

- (void)testExample {
    history = [[PomodoroHistory alloc]init];
    [history addTimeBoxWithDescription:@"" duration:0 start:nil];

    UITableViewCell * cell;
    UITableView * table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 700)];
    [table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    table.dataSource = history;

    cell = [history tableView:table
        cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
    
    FBSnapshotVerifyView(cell, nil);
}

@end
