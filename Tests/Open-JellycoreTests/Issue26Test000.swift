import XCTest
@testable import Open_Jellycore

final class Issue26Test: XCTestCase {
    func testIssue26Test000() throws {
        try execute(with: """
        import Shortcuts
        askForInput(prompt: "What is your name?", type: Text, default: "", allowDecimal: false, allowNegative: false) >> userName
        sendNotification(body: "Hello ${userName}", title: "Meet the Team!", sound: true)
        """)
    }
    

}


