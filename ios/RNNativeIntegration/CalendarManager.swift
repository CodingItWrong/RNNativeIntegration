//
//  CalendarManager.swift
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/24/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

class CalendarManager: NSObject {
  static let firstDayOfTheWeek = "Monday"
  
  func addEvent(_ name: String, location: String?, time: NSDate?) {
    Logger.info("Pretending to create an event \(name) at \(String(describing: location)) at \(String(describing: time))");
  }
  
  func findEvents() throws -> [String] {
//    let events: [String]? = ["foo", "bar", "baz"]
     let events: [String]? = nil
    
    if let events = events {
      return events
    } else {
      throw NSError(domain:"something", code:-42, userInfo:nil);
    }
  }
}
