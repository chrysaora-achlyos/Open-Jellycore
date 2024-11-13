import XCTest
@testable import Open_Jellycore

final class IssueSU000Test: XCTestCase {
    
    func testIssueSU000Test000() throws {
        try execute(with: """
         import Shortcuts
         var c0 = 0
         if(c0 == 0) {
           c0 = 1
         }
         quicklook(input: c0)
         """)
    }
    
    func testIssueSU000Test001() throws {
        try execute(with: """
         import Shortcuts
         var cA = "a"
         var cB = "b"
         var cC = ""
         if(cA == "b") {
           if(cB == "a"){
             cC = "ba"
           }
           if(cB == "b"){
             cC = "bb"
           }
         }
         if(cA == "a"){
           if(cB == "b"){
             cC = "ab"
           }
           if(cB == "a"){
             cC = "aa"
           }
         }
         quicklook(input: cC)
        """)
    }
}



