//
//  HomeParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct HomeParameter: ParameterProtocol, Codable {


    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        var parameters = HomeParameter()


        return parameters
    }
     
    // Need to loop through all properties to build the documentation.
    static func getDefaultValues() -> [String: String] {
        return [
:
        ]
    }
}