import XCTest
@testable import Open_Jellycore

final class Issue29Test: XCTestCase {
    func testIssue29Test000() throws {
        try execute(with: """
        import Shortcuts
        dictionary(json: {"Content-Type": "application/json; charset=UTF-8"}) >> header
        var cmsURL = "http://www.jahoo.com"
        dictionary() >> reqDict
        downloadURL( url: cmsURL, method: GET, headers: header, requestType: File, requestVar: reqDict) >> response
        """)
    }
    
    func testIssue29Test000a() throws {
        try execute(with: """
        import Shortcuts
        dictionary() >> header0
        setValue(key: Content-Type, value: "application/json; charset=UTF-8", dictionary: header0) >> header
        var cmsURL = "http://www.jahoo.com"
        dictionary(json: {}) >> reqDict
        downloadURL( url: cmsURL, method: GET, headers: header, requestType: File, requestVar: reqDict) >> response
        """)
    }
    
    func testIssue29Test001() throws {
        try execute(with: """
        import Shortcuts
        dictionary(json: {"Content-Type": "application/json; charset=UTF-8"}) >> header
        dictionary(jaon: {}) >> reqDict
        downloadURL( url: "http://www.jahoo.com", method: GET, headers: header, requestType: File, requestVar: reqDict) >> response
        """)
    }
    
    func testIssue29Test001a() throws {
        try execute(with: """
        import Shortcuts
        dictionary() >> header0
        setValue(key: Content-Type, value: "application/json; charset=UTF-8", dictionary: header0) >> header
        dictionary() >> reqDict
        downloadURL( url: "http://www.jahoo.com", method: GET, headers: header, requestType: File, requestVar: reqDict) >> response
        """)
    }
    
    func testIssue29Test002() throws {
        try execute(with: """
        import Shortcuts
        var cmsURL   = "http://www.jahoo.com"
        url(url: "${cmsURL}" )
        """)
    }
    
    func testIssue29Test003() throws {
        try execute(with: """
        import Shortcuts
        var cmsURL   = "http://www.jahoo.com"
        url(url: cmsURL )
        """)
    }
    
    func testIssue29Test004() throws {
        try execute(with: """
        import Shortcuts
        var cmsURL   = "http://www.jahoo.com"
        url(url: cmsURLtypo )
        """, shouldFail: true )
    }
    
}


