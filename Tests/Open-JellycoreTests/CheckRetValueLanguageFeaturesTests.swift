import TreeSitter
import TreeSitterJelly

import XCTest
@testable import Open_Jellycore

final class CheckRetValueOpenJellycoreTests: XCTestCase {

    func testFunctions() throws {
        let expectedStr = retval_OpenJellycoreTests_testFunctions
        let testString = """
        import Shortcuts
        
        func test() {
            return "Hello"
        }
        
        test()
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)

    }

    func testMacro() throws {
        let expectedStr = retval_OpenJellycoreTests_testMacro
        let testString = """
        import Shortcuts

        macro test() {
           return "Hello"
        }
        
        test()
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)
    }
    
    func testVariableSetToGlobalVariable() throws {
        let expectedStr = retval_OpenJellycoreTests_testVariableSetToGlobalVariable
        let testString = """
        import Shortcuts
        
        var helloWorld = ShortcutInput
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr) 
    }

    func testVariableSetToGlobalVariableAndRead() throws {
        let expectedStr = retval_OpenJellycoreTests_testVariableSetToGlobalVariableAndRead
        let testString = """
        import Shortcuts
        
        var helloWorld = ShortcutInput
        
        quicklook(input: helloWorld)
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)
    }

    func testVariableSetToString() throws {
        let expectedStr = retval_OpenJellycoreTests_testVariableSetToString
        let testString = """
        import Shortcuts
        
        var helloWorld = "Hello World!"
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)

    }

    func testVariableSetToStringAndRead() throws {
        let expectedStr = retval_OpenJellycoreTests_testVariableSetToStringAndRead
        let testString = """
        import Shortcuts
        
        var helloWorld = "Hello World!"
        
        quicklook(input: helloWorld)
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)

    }


    func testVariableSetToNumber() throws {
        let expectedStr = retval_OpenJellycoreTests_testVariableSetToNumber
        let testString = """
        import Shortcuts
        
        var meaningOfLife = 42
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)

    }

    func testVariableSetToNumberAndRead() throws {
        let expectedStr = retval_OpenJellycoreTests_testVariableSetToNumberAndRead
        let testString =  """
        import Shortcuts
        
        var meaningOfLife = 42
        
        quicklook(input: meaningOfLife)
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)
    }

    func testConditional() throws {
        let expectedStr = retval_OpenJellycoreTests_testConditional
        let testString =  """
        import Shortcuts
        
        if ShortcutInput == "Hello" {
            quicklook(input: ShortcutInput)
        }
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)
    }
    
    func testConditionalBoolean() throws {
        let expectedStr = retval_OpenJellycoreTests_testConditionalBoolean
        let testString =  """
        import Shortcuts
        
        if ShortcutInput.as(Boolean) {
            quicklook(input: ShortcutInput)
        }
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)

    }
    
    func testRepeat() throws {
        let expectedStr = retval_OpenJellycoreTests_testRepeat
        let testString =  """
        import Shortcuts
        
        repeat 100 {
            text(text: RepeatIndex)
        }
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)
    }
    
    func testRepeatEach() throws {
        let expectedStr = retval_OpenJellycoreTests_testRepeatEach
        let testString = """
        import Shortcuts
        
        repeatEach ShortcutInput {
            text(text: RepeatIndex)
        }
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)

    }
    
    func testMenu() throws {
        let expectedStr = retval_OpenJellycoreTests_testMenu
        let testString =  """
        import Shortcuts
        
        menu "Hello World!" {
        case "Case One":
            quicklook(input: ShortcutInput)
        case "Case Two":
            quicklook(input: ShortcutInput)
        }
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)
    }

    func testIssue31Interpolation() throws {
        let expectedStr = retval_OpenJellycoreTests_testIssue31Interpolation
        let testString =  """
        import Shortcuts
        var varA = "Pp"
        dictionary() >> dict0
        setValue(key: "A", value: "QqQ", dictionary: dict0) >> dict
        valueFor(dictionary: dict, key: "A") >> magicA
        var varB = "xxx${varA}yy${magicA}z"
        """
        try executeCheckReturn(with: testString, shouldFail: false, optExpectedStr: expectedStr)
    }

    
}
