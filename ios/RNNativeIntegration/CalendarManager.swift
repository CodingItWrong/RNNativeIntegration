//
//  CalendarManager.swift
//  RNNativeIntegration
//
//  Created by Josh Justice on 2/24/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

class Result: NSObject {
}

class SuccessResult: Result {
  let value: Any
  
  init(value: Any) {
    self.value = value
  }
}

class FailureResult: Result {
  let code: String
  let message: String
  let error: Error
  
  init(code: String, message: String, error: Error) {
    self.code = code
    self.message = message
    self.error = error
  }
}

class CalendarManager: NSObject {
  static let firstDayOfTheWeek = "Monday"
  
  func addEvent(_ name: String, location: String?, time: NSDate?) {
    Logger.info("Pretending to create an event \(name) at \(String(describing: location)) at \(String(describing: time))");
  }
  
  func findEvents() -> Result {
    let events: [String]? = ["foo", "bar", "baz"]
    // let events: [String]? = nil
    
    if let events = events {
      return SuccessResult(value: events)
    } else {
      let error = NSError(domain:"something", code:-42, userInfo:nil);
      return FailureResult(code: "no_events", message: "There were no events", error: error)
    }
  }
}
