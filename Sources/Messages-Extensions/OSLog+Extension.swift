// Copyright ePi Rational, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT
import Foundation
import OSLog
import os.signpost

/// An opinionated, convenience function for logging to both the Xcode console & the Logging template in Xcode Instruments.
@available(iOS 12.0, *)
extension OSLog {
    public static var subsystem = "com.roblabs.log-Messages"
    public static var category = "OSLog.Messages-Extensions"
    public static var name: StaticString = "Log Messages-Extensions"

    private static var oslog = OSLog(subsystem: subsystem, category: category)

    ///  Log a MSMessage event.
    ///
    ///  An opinionated, convenience function for logging to both the Xcode console & the Logging template in Xcode Instruments.
    ///
    ///  The `#function` and `#line` are passed in else they will be hardcoded to the lines in this function and file.
    ///
    ///  [OSSignpostType](https://developer.apple.com/documentation/os/ossignposter) is deprecated as of iOS 15.0.
    ///
    /**
```swift
import Messages_Extensions
import OSLog

// Log an event
OSLog.logEvent(.event, "Creating MSMessage layout")

// Begin & end a signpost
OSLog.logEvent(.begin, "MSMessage")
// do something...
OSLog.logEvent(.end, "MSMessage")
```
    */
    ///
    /// - Parameters:
    ///     - type: The signpost type.
    ///     - message: The message as a string.
    ///     - function: The calling function name.
    ///     - line: The line number.
    public static func logEvent(_ type: OSSignpostType,
                                _ message: String = "📝",
                                function: String = #function,
                                line: Int = #line) {

        #if DEBUG
        /// Log to the Xcode Console in *Debug Area*
        if(type == .event) {
            NSLog("[\(OSLog.subsystem)], \(function), line: \(line), \(message)")
        }
        #endif

        /// Log to Xcode Instruments
        os_signpost(type,
                    log: OSLog.oslog,
                    name: name,
                    "%{public}s, %{public}s, line %{public}s",
                    message, "\(function)", "\(line)")
    }
}
