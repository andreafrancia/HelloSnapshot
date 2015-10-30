//
//  PomodoroHistory_Tests.m
//  HelloSnapshot
//
//  Created by Andrea Francia on 10/30/15.
//  Copyright © 2015 Andrea Francia. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "PomodoroHistory.h"
@interface PomodoroHistory_Tests : XCTestCase
@end

@implementation PomodoroHistory_Tests  {
    PomodoroHistory * history;
}

- (void)setUp
{
    [super setUp];
    history = [[PomodoroHistory alloc]init];
}

-(void)test_it_should_have_a_row_for_every_time
{
    [history addTimeBoxWithDescription:@"coding"
                              duration:1500.0
                                 start:nil];
    XCTAssertEqual(1, [history tableView:table numberOfRowsInSection:0]);
}



-(void)test_it_starts_empty {
    XCTAssertEqual(0, [history tableView:table numberOfRowsInSection:0]);
}

- (void)test_has_one_section {
    XCTAssertEqual(1, [history  numberOfSectionsInTableView:table]);
}

static id table = nil;

@end
