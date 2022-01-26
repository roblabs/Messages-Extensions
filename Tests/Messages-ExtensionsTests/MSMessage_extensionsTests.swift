import XCTest
import OSLog
@testable import Messages_Extensions

final class MSMessage_extensionsTests: XCTestCase {
    func testEvent() {
        OSLog.logEvent(.event)
    }
    
    func testSignposts() {
        OSLog.logEvent(.begin)
        sleep(1)
        OSLog.logEvent(.end)
    }
}
