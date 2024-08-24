import TreeSitterJelly

import XCTest
@testable import Open_Jellycore


func execute(with testString: String, shouldFail: Bool = false) throws {
    EventReporter.shared.reset()
    let parser = Parser(contents: testString)
    try parser.parse()

    let compiler = Compiler(parser: parser)
    let _ = try compiler.compile(named: "Function Tests")

    if shouldFail {
        XCTAssertTrue(EventReporter.shared.numberOfErrors > 0)

        for error in EventReporter.shared.events {
            print(error.errorDescription ?? "No Description", error.recoveryStrategy)
        }
    } else {
        if EventReporter.shared.numberOfErrors > 0 {
            for error in EventReporter.shared.events {
                print(error.errorDescription ?? "No Description", error.recoveryStrategy)
            }
            XCTFail("Found \(EventReporter.shared.events.count) errors")
        } else {
            for error in EventReporter.shared.events {
                print(error.errorDescription ?? "No Description", error.recoveryStrategy)
            }

            print("Successfully Compiled Shortcut")
        }
    }
}
func similarString(lhs: String?, rhs: String?) -> Bool {
    // <string>Generated Magic Variable 83E3EA2A-6275-4287-8FCE-72BDE0A3BF4A</string>
    // <string>DD5C0484-3B8F-4D53-8B1B-0F90A4A3D4FE</string>
    // <string>function-dispatch-E4D66063-FE6D-4579-AC51-6C9CE417EE4D</string>


    if #available(iOS 16.0, *) {
        do {
            let mumble = "<string>MUMBLE</string>"
            let magicMumble = "<string>Generated Magic Variable MUMBLE</string>"
            let funcDispatchMumble = "<string>function-dispatch-MUMBLE</string>"

            let regex0 = try Regex("<string>([0-9A-F]{8})-([0-9A-F]{4})-([0-9A-F]{4})-([0-9A-F]{4})-([0-9A-F]{12})</string>")
            let regex1 = try Regex("<string>Generated Magic Variable ([0-9A-F]{8})-([0-9A-F]{4})-([0-9A-F]{4})-([0-9A-F]{4})-([0-9A-F]{12})</string>")
            let regex2 = try Regex("<string>function-dispatch-([0-9A-F]{8})-([0-9A-F]{4})-([0-9A-F]{4})-([0-9A-F]{4})-([0-9A-F]{12})</string>")

            let magicLHS = (lhs ?? "0")
                .replacing(regex0,with:mumble)
                .replacing(regex1,with:magicMumble)
                .replacing(regex2,with:funcDispatchMumble)

            let magicRHS = (rhs ?? "1")
                .replacing(regex0,with:mumble)
                .replacing(regex1,with:magicMumble)
                .replacing(regex2,with:funcDispatchMumble)

            return magicLHS == magicRHS
        } catch {
            // life goes on
        }
    }
    else {
        return lhs == rhs
    }
    return false
}
func executeCheckReturn(with testString: String, shouldFail: Bool = false, optExpectedStr: String? = nil) throws {
    EventReporter.shared.reset()
    let parser = Parser(contents: testString)
    try parser.parse()

    let compiler = Compiler(parser: parser)
    let retValue = try compiler.compile(named: "Function Tests")

    if shouldFail {
        XCTAssertTrue(EventReporter.shared.numberOfErrors > 0)

        for error in EventReporter.shared.events {
            print(error.errorDescription ?? "No Description", error.recoveryStrategy)
        }
    } else {
        if EventReporter.shared.numberOfErrors > 0 {
            for error in EventReporter.shared.events {
                print(error.errorDescription ?? "No Description", error.recoveryStrategy)
            }
            XCTFail("Found \(EventReporter.shared.events.count) errors")
        } else {
            for error in EventReporter.shared.events {
                print(error.errorDescription ?? "No Description", error.recoveryStrategy)
            }
            if let expectedStr = optExpectedStr {
                XCTAssertTrue(similarString(lhs:expectedStr, rhs:retValue))
            }
            print("Compiled Shortcut without Error message")        }
    }
}
