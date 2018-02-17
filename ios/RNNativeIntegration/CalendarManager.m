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

@implementation CalendarManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addEvent:(NSString *)name details:(NSDictionary *)details)
{
  NSString *location = [RCTConvert NSString:details[@"location"]];
  NSDate *time = [RCTConvert NSDate:details[@"time"]];
  
  RCTLogInfo(@"Pretending to create an event %@ at %@ at %@", name, location, time);
}

RCT_EXPORT_METHOD(findEvents:(RCTResponseSenderBlock)callback)
{
  NSArray *events = @[@"foo", @"bar", @"baz"];
  NSNull *noError = [NSNull null];
  callback(@[noError, events]);
}

@end
