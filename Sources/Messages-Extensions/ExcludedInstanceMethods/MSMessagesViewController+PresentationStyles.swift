// Copyright ePi Rational, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT
import Foundation
import Messages
import Messages_Extensions
import OSLog

// MARK: - Presentation Styles
//   for a [MSMessagesAppViewController](https://developer.apple.com/documentation/messages/msmessagesappviewcontroller)
extension MSMessagesAppViewController {
    /// Tells the view controller that the extension is about to transition to a new presentation style.
    ///
    /// - Parameter presentationStyle:  The new presentation style. For a list of possible styles, see `MSMessagesAppPresentationStyle`.
    ///
    /// Override this method to update your extension’s layout while the extension is transitioning between the `MSMessagesAppPresentationStyle.compact` and `MSMessagesAppPresentationStyle.expanded` styles.
    ///  The user can switch between styles by tapping the collapse and expand buttons in the Messages app. You can also programmatically trigger a transition by calling `requestPresentationStyle(_:)`.
    ///
    /// **Notes when creating new iMessage App:**
    /// *Called before the extension transitions to a new presentation style.*
    /// *Use this method to prepare for the change in presentation style.*
    override func willTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        OSLog.logEvent(.event)
    }
    
    /// Tells the view controller that the extension has transitioned to a new presentation style.
    ///
    /// - Parameter presentationStyle:  The new presentation style. For a list of possible styles, see `MSMessagesAppPresentationStyle`.
    ///
    /// Override this method to respond after the extension’s user interface has transitioned to a new presentation style. The user can switch between styles by tapping the collapse and expand buttons in the Messages app. You can also programmatically trigger a transition by calling `requestPresentationStyle(_:)`.
    ///
    /// The system doesn’t call this method on a view controller that is presenting a live view in the transcript or input field—in other words, when the view controller’s `presentationStyle` property is set to the `MSMessagesAppPresentationStyle.transcript` value.
    ///
    /// **Notes when creating new iMessage App:**
    /// *Called after the extension transitions to a new presentation style.*
    /// *Use this method to finalize any behaviors associated with the change in presentation style.*
    override func didTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        OSLog.logEvent(.event)
    }
}
