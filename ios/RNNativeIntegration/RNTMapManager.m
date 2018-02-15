//
//  RNTMapManager.m
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/15/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNTMapManager.h"
#import "RCTConvert+Mapkit.m"

@implementation RNTMapManager

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(zoomEnabled, BOOL)

RCT_CUSTOM_VIEW_PROPERTY(region, MKCoordinateRegion, MKMapView)
{
  [view setRegion: json ? [RCTConvert MKCoordinateRegion:json] : defaultView.region animated: YES];
}

- (UIView *)view
{
  return [[MKMapView alloc] init];
}

@end
