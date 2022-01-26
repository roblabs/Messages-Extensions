// Copyright ePi Rational, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT
import Foundation
import Messages

extension MSSticker {
    open override var debugDescription: String {
        let localizedDescription = self.localizedDescription
        let imageFileURL = self.imageFileURL
        
        let debugDescrption = """
MSSticker.localizedDescription: \(localizedDescription)
MSSticker.imageFileURL: \(imageFileURL)
"""
        return debugDescrption
    }
}
