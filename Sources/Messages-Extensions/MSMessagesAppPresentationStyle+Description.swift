// Copyright ePi Rational, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT
import Messages

extension MSMessagesAppPresentationStyle {

    /// Describe the state of the [MSMessagesAppPresentationStyle](https://developer.apple.com/documentation/messages/msmessagesapppresentationstyle)
    /// Without this convenience, description is printed as `__C.MSMessagesAppPresentationStyle`
    public func debugDescription() -> String {
        switch self {

        /// The iMessage App expands to fill most of the screen.
        case .expanded:
            return "expanded"

        /// The iMessage App is displayed inside the keyboard area.
        case .compact:
            return "compact"

        /// The iMessage app is displayed in the Messages app’s transcript or input field.
        case .transcript:
            return "transcript"

        @unknown default:
            return "@unknown default"
    }
  }
}
