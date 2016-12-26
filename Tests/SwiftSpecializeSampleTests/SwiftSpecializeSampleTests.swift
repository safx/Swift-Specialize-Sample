import XCTest
import SwiftSpecializeSample

class SwiftSpecializeSampleTests: XCTestCase {

    func testNormalPerformance() {
        self.measure {
            Game(10).play()
        }
    }

    func testSpecializedPerformance() {
        self.measure {
            SpecializedGame(10).play()
        }
    }
    
    static var allTests : [(String, (SwiftSpecializeSampleTests) -> () throws -> Void)] {
        return [
            ("testNormalPerformance", testNormalPerformance),
            ("testSpecializedPerformance", testSpecializedPerformance),
        ]
    }
}
