//
//  RCTConvert+Mapkit.m
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/15/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RCTConvert+Mapkit.h"

@implementation RCTConvert (Mapkit)

+ (MKCoordinateSpan)MKCoordinateSpan:(id)json
{
  json = [self NSDictionary:json];
  return (MKCoordinateSpan){
    [self CLLocationDegrees:json[@"latitudeDelta"]],
    [self CLLocationDegrees:json[@"longitudeDelta"]]
  };
}

+ (MKCoordinateRegion)MKCoordinateRegion:(id)json
{
  return (MKCoordinateRegion){
    [self CLLocationCoordinate2D:json],
    [self MKCoordinateSpan:json]
  };
}

@end
