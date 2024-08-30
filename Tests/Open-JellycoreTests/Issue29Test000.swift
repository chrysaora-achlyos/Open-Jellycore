import XCTest
@testable import Open_Jellycore

final class Issue29Test: XCTestCase {
    func testIssue29Test000() throws {
        try execute(with: """
        import Shortcuts
        dictionary() >> header0
        setValue(key: Content-Type, value: "application/json; charset=UTF-8", dictionary: header0) >> header
        var cmsURL = "http://www.jahoo.com"
        dictionary() >> reqDict
        downloadURL( url: cmsURL, method: GET, headers: header, requestType: Json, requestJSON: reqDict, requestVar: response) >> response
        """)
    }
    
}


