//
//  CalendarManager.m
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/15/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "CalendarManager.h"
#import <React/RCTLog.h>

@implementation CalendarManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(NSDate *)date)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

@end
