//
//  PomodoroHistory.h
//  HelloSnapshot
//
//  Created by Andrea Francia on 10/30/15.
//  Copyright © 2015 Andrea Francia. All rights reserved.
//

@import UIKit;

@interface  PomodoroHistory : NSObject<UITableViewDataSource>
-(void)addTimeBoxWithDescription:(NSString*)description
                        duration:(NSTimeInterval)duration
                           start:(NSDate*)startDate;
@end
