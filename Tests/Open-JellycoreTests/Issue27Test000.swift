import XCTest
@testable import Open_Jellycore

final class Issue27Test: XCTestCase {
    func testIssue27Test000() throws {
        try execute(with: """
        import Shortcuts
        var varA = 0
        """)
    }
    
    func testIssue27Test001() throws {
        try execute(with: """
        import Shortcuts
        var varA = 0.9
        """)
    }
    

}


