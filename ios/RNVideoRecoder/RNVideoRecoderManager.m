//
//  RNVideoRecoder.m
//  RNVideoRecoder
//
//  Created by Coz on 05/01/2018.
//  Copyright © 2018 Coz. All rights reserved.
//

#import "RNVideoRecoderManager.h"


@implementation RNVideoRecoderManager

// To export a module named RNVideoRecoderManager
//RCT_EXPORT_MODULE();

// This would name the module AwesomeCalendarManager instead
RCT_EXPORT_MODULE(AwesomeVideoRecoder);

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(NSDate *)date)
{
    // Date is ready to use!
}


RCT_REMAP_METHOD(findEvents,
                 findEventsWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
    NSArray *events = ...
    if (events) {
        resolve(events);
    } else {
        NSError *error = ...
        reject(@"no_events", @"There were no events", error);
    }
}

- (NSArray<NSString *> *)supportedEvents
{
    return @[@"EventReminder"];
}

- (void)calendarEventReminderReceived:(NSNotification *)notification
{
    NSString *eventName = notification.userInfo[@"name"];
    [self sendEventWithName:@"EventReminder" body:@{@"name": eventName}];
}

@end
