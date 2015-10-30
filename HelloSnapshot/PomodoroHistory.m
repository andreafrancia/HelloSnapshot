//
//  PomodoroHistory.m
//  HelloSnapshot
//
//  Created by Andrea Francia on 10/30/15.
//  Copyright © 2015 Andrea Francia. All rights reserved.
//

#import "PomodoroHistory.h"

@implementation PomodoroHistory {
    
    NSMutableArray * _timeBoxes;
}

-(instancetype)init
{
    self = [super init];
    if(self) {
        _timeBoxes = [[NSMutableArray alloc]init];
    }
    return self;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_timeBoxes count];
}
-(void)addTimeBoxWithDescription:(NSString*)description
                        duration:(NSTimeInterval)duration
                           start:(NSDate*)startDate
{
    [_timeBoxes addObject:description];
}
@end
