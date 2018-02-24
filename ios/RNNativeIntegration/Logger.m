//
//  Logger.m
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/24/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "Logger.h"
#import <React/RCTLog.h>

@implementation Logger

+ (void)info:(NSString *)message {
  RCTLogInfo(message);
}

@end
