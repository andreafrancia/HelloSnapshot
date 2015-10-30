//
//  HelloSnapshotTests.m
//  HelloSnapshotTests
//
//  Created by Andrea Francia on 10/30/15.
//  Copyright © 2015 Andrea Francia. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

@interface HelloSnapshotTests : FBSnapshotTestCase

@end

@implementation HelloSnapshotTests

- (void)testExample {
    UILabel * label = [[UILabel alloc]init];
    
    label.frame = CGRectMake(0, 0, 30, 30);
    label.text = @"Hello world!";
    
    XCTAssertEqualObjects(@"1", @"1");
}

@end
