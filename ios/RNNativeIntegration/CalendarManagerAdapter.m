//
//  CalendarManagerAdapter.m
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/15/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "CalendarManagerAdapter.h"
#import "RNNativeIntegration-Swift.h"
#import <React/RCTConvert.h>
#import <React/RCTUtils.h>

@implementation CalendarManagerAdapter {
  CalendarManager *_calendarManager;
}

- (NSDictionary *)constantsToExport
{
  return @{ @"firstDayOfTheWeek": CalendarManager.firstDayOfTheWeek };
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    _calendarManager = [[CalendarManager alloc] init];
  }
  return self;
}

RCT_EXPORT_MODULE(CalendarManager);

RCT_EXPORT_METHOD(addEvent:(NSString *)name details:(NSDictionary *)details)
{
  NSString *location = [RCTConvert NSString:details[@"location"]];
  NSDate *time = [RCTConvert NSDate:details[@"time"]];
  
  [_calendarManager addEvent:name location:location time:time];
}

RCT_REMAP_METHOD(findEvents,
                 findEventsWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  NSError *error;
  NSArray *events = [_calendarManager findEventsAndReturnError: &error];
  if (error) {
    reject(@"no_events", @"There were no events.", error);
  }
  
  resolve(events);
}

@end
