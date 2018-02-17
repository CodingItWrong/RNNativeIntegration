//
//  RNTMapView.h
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/17/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <MapKit/MapKit.h>
#import <React/RCTComponent.h>

@interface RNTMapView : MKMapView

@property (nonatomic, copy) RCTBubblingEventBlock onRegionChange;

@end
