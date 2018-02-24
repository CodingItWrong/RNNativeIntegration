//
//  CalendarManager.swift
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/24/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

enum CalendarError: Error {
  case noEvents
}

class Result: NSObject {
}

class SuccessResult: Result {
  let value: Any
  
  init(value: Any) {
    self.value = value
  }
}

class FailureResult: Result {
  let error: Error
  
  init(error: Error) {
    self.error = error
  }
}

class CalendarManager: NSObject {
  static let firstDayOfTheWeek = "Monday"
  
  func addEvent(name: String, location: String?, time: NSDate?) {
    Logger.info("Pretending to create an event \(name) at \(String(describing: location)) at \(String(describing: time))");
  }
  
  func findEvents() throws -> [String] {
    let events: [String]? = ["foo", "bar", "baz"]
    // let events: [String]? = nil
    
    if let events = events {
      return events
    } else {
      throw CalendarError.noEvents
    }
  }
}
