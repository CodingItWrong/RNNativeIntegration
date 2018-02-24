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
  
  func addEvent(name: String, location: String?, time: NSDate?) {
    Logger.info("Pretending to create an event \(name) at \(String(describing: location)) at \(String(describing: time))");
  }
}
