//
//  ViewController.m
//  DJCalendar
//
//  Created by dingjianjaja on 2020/3/5.
//  Copyright © 2020 chensx. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    
//    SSCalendarAnnualViewController *vc = [[SSCalendarAnnualViewController alloc] initWithEvents:[self generateEvents]];
//    UIViewController *vc2 = [UIViewController new];
//    vc2.view.backgroundColor = [UIColor blueColor];
//
//    [self presentViewController:vc2 animated:NO completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    SSCalendarAnnualViewController *vc = [[SSCalendarAnnualViewController alloc] initWithEvents:[self generateEvents]];
    UIViewController *vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor blueColor];
    
    [self presentViewController:vc animated:NO completion:nil];
}

- (NSArray<SSEvent*> *)generateEvents{
    NSMutableArray *events = [NSMutableArray array];
    for (int i = 2016; i < 2022; i++) {
        for (int j = 0; j < 100; j++) {
            [events addObject:[self generateEventYear:i]];
        }
    }
    return events;
}


- (SSEvent *)generateEventYear:(NSInteger)year{
    NSInteger month = arc4random_uniform(12) + 1;
    NSInteger day = arc4random_uniform(28) + 1;
    
    SSEvent *event = [[SSEvent alloc] init];
    event.startDate = [SSCalendarUtils dateWithYear:year Month:month Day:day];
    event.startTime = @"09:00";
    event.name = @"Example Event";
    event.desc = @"Details of the event";
    return event;
}

@end
