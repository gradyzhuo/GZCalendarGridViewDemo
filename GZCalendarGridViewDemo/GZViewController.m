//
//  GZViewController.m
//  GZCalendarGridViewDemo
//
//  Created by 卓俊諺 on 2013/10/7.
//  Copyright (c) 2013年 Grady Zhuo. All rights reserved.
//

#import "GZViewController.h"

@interface GZViewController ()

@end

@implementation GZViewController
+(void)initialize{
    [GZCalendarGridView initialize];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)calendarView:(GZCalendarGridView *)calendarView shouldDrawCellWithCalendarState:(GZCalendarGridViewCellState)state{
    return state != GZCalendarGridViewCellStateDisable;
}

-(CGFloat)calendarView:(GZCalendarGridView *)calendarView heightInSection:(NSInteger)section{
    return 50;
}

-(NSArray *)calendarView:(GZCalendarGridView *)calendarView eventsFromStartDate:(NSDate *)startDate toEndDate:(NSDate *)endDate{
    return @[@1];
}


- (IBAction)change:(id)sender {
}
- (IBAction)goTo:(id)sender {
}
@end
