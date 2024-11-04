import XCTest
@testable import Open_Jellycore

final class Issue19Test: XCTestCase {
    
    func testIssue19Test000_Goal() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"Content-Type": "application/json; charset=UTF-8"}) >> header
         dictionary(json: {}) >> unused
         dictionary(json: {"a": "z"}) >> requestVar
         var url = "http://echo.free.beeceptor.com/sample-request?author=beeceptor"
         downloadURL(url: url, method: POST, headers: header, requestType: File, requestJSON: unused, requestVar: requestVar) >> response
         quicklook(input: response)
         """)
    }
    
    func testIssue19Test001_legacyRegression() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: "{\\\"a\\\": \\\"b\\\"}") >> d0
         quicklook(input: d0)
         """)
    }
    
    func testIssue19Test002_curlyBrackJsonObjectLiteral() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"a": "b"}) >> d0
         quicklook(input: d0)
         """)
    }
    
    func testIssue19Test002a_jsonObjectLiteral_BoolVal() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"T": true, "F": false}) >> d0
         quicklook(input: d0)
         """)
    }
    
    // Sci notation is not preserved, converted in translation to plist
    func testIssue19Test002a_jsonObjectLiteral_Number() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"int": 10, "float": -10.3, "sci": -96.01E-02}) >> d0
         quicklook(input: d0)
         """)
    }
    
    func testIssue19Test002a_jsonObjectLiteral_Array() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"key": ["string", -10.3, true]}) >> d0
         quicklook(input: d0)
         """)
    }
    
    func testIssue19Test002a_jsonObjectLiteral_Dictionary() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"key": {"subKey":"subValue"}}) >> d0
         quicklook(input: d0)
         """)
    }
    
    // works because dictionary value is constant
    func testIssue19Test003() throws {
        try execute(with: """
         import Shortcuts
         var unused = {}
         dictionary(json: {"k": "v"}) >> compileTimeDict
         
         downloadURL( url: "http://echo.free.beeceptor.com/sample-request?author=beeceptor", method: POST, headers: {"Content-Type": "application/json; charset=utf-8"}, requestType: Json, requestJSON: compileTimeDict, requestVar: unused) >> response
         """)
    }
    
    // shouldFail because runTimeDict value is unknown at compile time,
    // should be using requestType: File  as in testIssue19Test003a_requstTypeFile_requestVarRuntime
    func testIssue19Test003a_requstTypeJson_requestJsonRuntime() throws {
        try execute(with: """
         import Shortcuts
         var unused = {}
         dictionary(json: {"k": "v"}) >> compileTimeDict
         setValue(key: "k", value: "newValue", dictionary: compileTimeDict) >> runTimeDict
         dictionary(json: {"unlucky": "13"}) >> randy
         downloadURL( url: "http://echo.free.beeceptor.com/sample-request?author=beeceptor", method: POST, headers: {"Content-Type": "application/json; charset=utf-8"}, requestType: Json, requestJSON: runTimeDict, requestVar: unused) >> response
         quicklook(input: response)
         """, shouldFail: true)
    }
    
    // PROPER use requestVar with runtime modified dictionary
    func testIssue19Test003a_requstTypeFile_requestVarRuntime() throws {
        try execute(with: """
         import Shortcuts
         var unused = {}
         dictionary(json: {"k": "v"}) >> compileTimeDict
         setValue(key: "k", value: "newValue", dictionary: compileTimeDict) >> runTimeDict
         downloadURL( url: "http://echo.free.beeceptor.com/sample-request?author=beeceptor", method: POST, headers: {"Content-Type": "application/json; charset=utf-8"}, requestType: File, requestJSON: unused, requestVar: runTimeDict) >> response
         quicklook(input: response)
         """)
    }
    
    func testIssue19Test004_varCompileTimeStringJson() throws {
        try execute(with: """
         import Shortcuts
         var aa = {"k": "v"}
         dictionary(json: aa) >> compileTimeString
         quicklook(input: compileTimeString)
         """)
    }
    
    func testIssue19Test005_jsonObjectValueWithStringInterpolation() throws {
        try execute(with: """
         import Shortcuts
         var aa = "A"
         var runtimeString = {"k":"77${aa}88"}
         quicklook(input: runtimeString)
         """)
    }
    
    //COMPILES and RUNS, but dictionary does not have runtine string value, instead the literal ${aa} text
    func testIssue19Test006_dictionaryFromJsonObjectValueWithStringInterpolation() throws {
        try execute(with: """
         import Shortcuts
         var aa = "A"
         var runtimeString = {"k":"77${aa}88"}
         dictionary(json: runtimeString) >> d0
         quicklook(input: d0)
         """)
    }
    
    // PROPER use requestType:File, requestVar:runtimeString to handle string interpolation
    func testIssue19Test006a_requestVarFromJsonObjectValueWithStringInterpolation() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"Content-Type": "application/json; charset=UTF-8"}) >> header
         dictionary(json: {}) >> unused
         var aa = "A"
         var runtimeString = {"k":"77${aa}88"}
         var url = "http://echo.free.beeceptor.com/sample-request?author=beeceptor"
         downloadURL(url: url, method: POST, headers: header, requestType: File, requestJSON: unused, requestVar: runtimeString) >> response
         quicklook(input: response)
         """)
    }
    
    // INPROPER -- {"k":"77${aa}88"} -- Do NOT use requestType: Json and requestJSON: <runtimeVar>
    func testIssue19Test006a_requestJsonFromJsonObjectValueWithStringInterpolation() throws {
        try execute(with: """
         import Shortcuts
         dictionary(json: {"Content-Type": "application/json; charset=UTF-8"}) >> header
         dictionary(json: {}) >> unused
         var aa = "A"
         var runtimeString = {"k":"77${aa}88"}
         var url = "http://echo.free.beeceptor.com/sample-request?author=beeceptor"
         downloadURL(url: url, method: POST, headers: header, requestType: Json, requestJSON: runtimeString, requestVar: unused) >> response
         quicklook(input: response)
         """)
    }
}



