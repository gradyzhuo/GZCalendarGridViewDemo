//
//  GZViewController.h
//  GZCalendarGridViewDemo
//
//  Created by 卓俊諺 on 2013/10/7.
//  Copyright (c) 2013年 Grady Zhuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GZKit/GZKit.h>
@interface GZViewController : UIViewController<GZCalendarGridViewDataSource,GZCalendarGridViewDelegate,GZInfiniteScrollViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel *sectionHeightLabel;
@property (nonatomic, weak) IBOutlet UISlider *heightSlider;
@property (nonatomic, weak) IBOutlet GZCalendarGridView *calendarGridView;

- (IBAction) heightSliderChanged:(id)sender;

@end
