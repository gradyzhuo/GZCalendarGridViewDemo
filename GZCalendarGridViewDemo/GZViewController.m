//
//  GZViewController.m
//  GZCalendarGridViewDemo
//
//  Created by 卓俊諺 on 2013/10/7.
//  Copyright (c) 2013年 Grady Zhuo. All rights reserved.
//

#import "GZViewController.h"

@interface GZViewController (){
    CGFloat _heightForSection;
}

@end

@implementation GZViewController

+(void)initialize{
    [GZCalendarGridView initialize];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _heightForSection = self.heightSlider.value;
    self.sectionHeightLabel.text = [NSString stringWithFormat:@"%f",self.heightSlider.value];
//    self.calendarGridView.calendarType = GZCalendarGridViewTypeWeek;
    
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
    return _heightForSection;
}

- (void)heightSliderChanged:(id)sender{
    
    UISlider *heightSlider = (UISlider *)sender;
    _heightForSection = heightSlider.value;
    self.sectionHeightLabel.text = [NSString stringWithFormat:@"%f",self.heightSlider.value];
    [self.calendarGridView reloadData];
    
    
}

@end
