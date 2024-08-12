import XCTest
@testable import Open_Jellycore

final class Issue31Test: XCTestCase {
    func testIssue31Test000() throws {
        try execute(with: """
        import Shortcuts
        var varA = "b"
        var varB = "x${varA}y${varA}z"
        """)
    }
    
    func testIssue31Test001() throws {
        try execute(with: """
        var varA = "b"
        """)
    }
    
    func testIssue31Test002() throws {
        try execute(with: """
        import Shortcuts
        var varA = "Pp"
        dictionary() >> dict0
        setValue(key: "A", value: "QqQ", dictionary: dict0) >> dict
        valueFor(dictionary: dict, key: "A") >> magicA
        var varB = "xxx${varA}yy${magicA}z"
        """)
    }
}


