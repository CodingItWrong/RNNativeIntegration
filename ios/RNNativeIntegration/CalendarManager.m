//
//  CalendarManager.m
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/15/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "CalendarManager.h"
#import <React/RCTLog.h>
#import <React/RCTConvert.h>
#import <React/RCTUtils.h>

@implementation CalendarManager

- (NSDictionary *)constantsToExport
{
  return @{ @"firstDayOfTheWeek": @"Monday" };
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addEvent:(NSString *)name details:(NSDictionary *)details)
{
  NSString *location = [RCTConvert NSString:details[@"location"]];
  NSDate *time = [RCTConvert NSDate:details[@"time"]];
  
  RCTLogInfo(@"Pretending to create an event %@ at %@ at %@", name, location, time);
}

RCT_REMAP_METHOD(findEvents,
                 findEventsWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  NSArray *events = @[@"foo", @"bar", @"baz"];
//  NSArray *events = NULL;
  if (events) {
    resolve(events);
  } else {
    NSError *error = [NSError errorWithDomain:@"something" code:-42 userInfo:NULL];
    reject(@"no_events", @"There were no events", error);
  }
}

@end
