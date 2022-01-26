// Copyright ePi Rational, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT
import Foundation
import Messages

extension MSMessage {
    open override var debugDescription: String {
        
        let accessibilityLabel = self.accessibilityLabel
        let error = self.error
        let isPending = self.isPending
        let session = self.session
        let shouldExpire = self.shouldExpire
        let summaryText = self.summaryText
        let url = self.url
        
        let debugDescrption = """
MSMessage.accessibilityLabel: \(String(describing: accessibilityLabel))
MSMessage.error: \(String(describing: error))
MSMessage.isPending: \(isPending)
MSMessage.session: \(String(describing: session))
MSMessage.shouldExpire: \(shouldExpire)
MSMessage.summaryText: \(String(describing: summaryText))
MSMessage.url: \(String(describing: url))
"""
        return debugDescrption
    }
}
