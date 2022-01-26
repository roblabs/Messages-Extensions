// Copyright ePi Rational, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT
import Foundation
import Messages
import Messages_Extensions
import OSLog

// MARK: - Managing the Extensions's state
//   for a [MSMessagesAppViewController](https://developer.apple.com/documentation/messages/msmessagesappviewcontroller)
extension MSMessagesAppViewController {
    /// Invoked just before the Messages extension becomes active.
    /// - Parameter conversation: The conversation that the user is currently viewing in the Messages app.
    ///
    /// Override this method to perform any setup steps necessary before the Messages extension becomes active. The extension becomes active both when the user selects the extension from the app drawer, and when the user selects a message in the transcript that represents an `MSMessage` object created by a copy of the extension.
    ///
    /// **Notes when creating new iMessage App:**
    /// *Called when the extension is about to move from the inactive to active state. This will happen when the extension is about to present UI.*
    ///
    /// *Use this method to configure the extension and restore previously stored state.*
    override func willBecomeActive(with conversation: MSConversation) {
        OSLog.logEvent(.event, "MSMessage: Extension State")
    }
    
    /// Invoked after the Messages extension becomes active.
    ///
    /// - Parameter conversation: The conversation that the user is currently viewing in the Messages app.
    ///
    /// Override this method to respond after the Messages extension becomes active. The extension becomes active both when the user selects the extension from the app drawer, and when the user selects a message in the transcript that represents an `MSMessage` object created by a copy of the extension.
    ///
    /// **Notes when creating new iMessage App:**
    /// *Called when the extension is about to move from the active to inactive state.*
    ///
    /// *This will happen when the user dismisses the extension, changes to a different
    /// conversation or quits Messages.*
    ///
    /// *Use this method to release shared resources, save user data, invalidate timers, and store enough state information to restore your extension to its current state in case it is terminated later.*
    override func didBecomeActive(with conversation: MSConversation) {
        OSLog.logEvent(.event, "MSMessage: Extension State")
    }
    
    /// Invoked just before the message resigns its active status.
    ///
    /// - Parameter conversation: The conversation that the user is currently viewing in the Messages app.
    ///
    /// Override this method to perform any cleanup activities just before the Messages extension is dismissed. Avoid doing any time-consuming tasks in your implementation. This method should return as quickly as possible. Also, avoid making asynchronous calls, because the extension might terminate before the asynchronous tasks have completed.
    ///
    override func willResignActive(with conversation: MSConversation) {
        OSLog.logEvent(.event, "MSMessage: Extension State")
    }
    
    /// Invoked after the message resigns its active status.
    ///
    /// - Parameter conversation: The conversation that the user is currently viewing in the Messages app.
    ///
    /// Override this method to perform any cleanup activities after the Messages extension has been dismissed. Avoid doing any time-consuming tasks in your implementation.
    override func didResignActive(with conversation: MSConversation) {
        OSLog.logEvent(.event, "MSMessage: Extension State")
    }
}
