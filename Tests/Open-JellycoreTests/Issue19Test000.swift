import XCTest
@testable import Open_Jellycore

final class Issue19Test: XCTestCase {
    // Only works with magicvariagle output of dictionary(json:...) >> magicVar
    // NO, setValue go mod dictionary
    //    func testIssue19Test000() throws {
    //        try execute(with: """
    //        import Shortcuts
    //        dictionary(json: "{}") >> h0
    //        setValue(key: "Content-Type", value: "application/json; charset=UTF-8", dictionary: h0) >> h
    //        var u = "http://echo.free.beeceptor.com/sample-request?author=beeceptor"
    //        dictionary(json: "{}") >> mm0
    //        setValue(key: "a", value: "z", dictionary: mm0) >> mm
    //        downloadURL(url: u, method: POST, headers: h, requestType: Json, requestJSON: mm, requestVar: response) >> response
    //        """)
    //    }
    
    func testIssue19Test001() throws {
        try execute(with: """
        import Shortcuts
        dictionary(json: "{\\\"a\\\": \\\"b\\\"}") >> h0
        """)
    }
    
    func testIssue19Test002() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"a": "b"}) >> h0
         """)
    }
    
    func testIssue19Test003() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: { "bar": [ "a", 1, true, false], }) >> casestudy
         """)
    }
    
    func testIssue19Test004() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: { "one": 1, "tr": true}) >> casestudy
         """)
    }
    
    func testIssue19Test005() throws {
        try execute(with: """
         import Shortcuts
         var aa = 13
         dictionary(json: {"k": "v"}) >> mm
         downloadURL( url: "http://echo.free.beeceptor.com/sample-request?author=beeceptor", method: POST, headers: {"Content-Type": "application/json; charset=utf-8"}, requestType: Json, requestVar: mm) >> response
         """)
    }
    
    
    func testIssue19Test006() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"k0":"v0"}) >> mm
         var aa = {"k": "v"}
         dictionary(json: aa)
         """)
    }
    
    
    func testIssue19Test007() throws {
        try execute(with: """
         import Shortcuts
         var aa = "A"
         var bb = "123${aa}456"
         var cc = {"k":"77${aa}88"}
         """)
    }
    
    func testIssue19Test008() throws {
        try execute(with: """
         import Shortcuts
         var aa = 0.9
         var bb = "123${aa}456"
         var cc = {"k":"77${aa}88"}
         """)
    }
    
    func testIssue19Test009() throws {
        try execute(with: """
         import Shortcuts
         var aa = 0.9
         var bb = "123${aa}456"
         quicklook(input: bb)
         """)
    }
    
    func testIssue19Test010() throws {
        try execute(with: """
         import Shortcuts
         var aa = 0.9
         var bb = "123${aa}456"
         quicklook(input: bb)
         """)
    }
    
    
    func testIssue19Test011() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"k0":0})
         """)
    }
    
    
    func testIssue19Test012_literal() throws {
        try execute(with: """
         import Shortcuts
         downloadURL( url: "http://echo.free.beeceptor.com/sample-request?author=beeceptor", method: POST, headers: {"Content-Type": "application/json; charset=utf-8"}, requestType: Json, requestJSON: {"k":"v"}, requestVar: response) >> response
         """)
    }
    


    
    func testIssue19Test012_fileVar() throws {
        try execute(with: """
           import Shortcuts
           var num = 0.9
           var json = { "title": "My First Post", "body": "0.7"}
           downloadURL( url: "http://echo.free.beeceptor.com/sample-request?author=beeceptor", method: POST, headers: {"XXContent-Type": "application/json; charset=utf-8"}, requestType: File, requestVar: json) >> response
           """)
    }
}



