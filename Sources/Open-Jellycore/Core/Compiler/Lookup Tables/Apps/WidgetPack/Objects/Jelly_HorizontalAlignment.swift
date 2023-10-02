//
//  Jelly_HorizontalAlignment.swift
//  
//
//  Created by Zachary Lineman on 1/5/23.
//

struct Jelly_HorizontalAlignment: JellyObject, Codable {
    @CodableIgnored
    var objectName: String = "Horizontal Alignment"
    @CodableIgnored
    var correctType: String = "HorizontalAlignment"
    @CodableIgnored
    var description: String = "A horizontal alignment object from the Widgetpack app."
    
    var identifier: JellyString?
    var displayString: JellyString?

    init(_ value: CoreNode, scopedVariables: [Variable]) {
//        if let parameter = node as? ObjectNode {
//            if parameter.objectName != correctType {
//                EventReporter.shared.report(error: .typeError(type: objectName, description: "\(parameter.objectName) is not equivalent to the expected type \(objectName)"), textPosition: parameter.textPosition)
//                return
//            }
//
//            if let value = parameter.parameters.first(where: { node in return node.slotName == "identifier" }) {
//                self.identifier = JellyString(value, scopedVariables: scopedVariables)
//            } else {
//                EventReporter.shared.report(error: .parameterNotFound(parameter: "identifier", functionName: "HorizontalAlignment"), textPosition: node.textPosition)
//            }
//            if let value = parameter.parameters.first(where: { node in return node.slotName == "displayString" }) {
//                self.displayString = JellyString(value, scopedVariables: scopedVariables)
//            } else {
//                EventReporter.shared.report(error: .parameterNotFound(parameter: "displayString", functionName: "HorizontalAlignment"), textPosition: node.textPosition)
//            }
//        }
    }
}
