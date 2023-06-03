//
//  SelectSongParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct SelectSongParameter: ParameterProtocol, Codable {
	var WFExportSongActionSelectMultiple: JellyBoolean?


    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        var parameters = SelectSongParameter()

        if let value = call.first(where: { node in return node.slotName == "multiple" }) {
            parameters.WFExportSongActionSelectMultiple = JellyBoolean(value, scopedVariables: scopedVariables)
        } else {
            ErrorReporter.shared.reportError(error: .missingParameter(function: "selectSong", name: "multiple"), node: nil)
        }

        return parameters
    }
     
    // Need to loop through all properties to build the documentation.
    static func getDefaultValues() -> [String: String] {
        return [
			"multiple": "false",

        ]
    }
}