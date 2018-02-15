//
//  RNTMapManager.m
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/15/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNTMapManager.h"

@implementation RNTMapManager

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(zoomEnabled, BOOL)

- (UIView *)view
{
  return [[MKMapView alloc] init];
}

@end
