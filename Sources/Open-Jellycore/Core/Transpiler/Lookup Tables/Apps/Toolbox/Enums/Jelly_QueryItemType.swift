//
//  Jelly_QueryItemType.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

enum Jelly_QueryItemType: String, JellyEnum, Codable {
	case text
	case dictionary

    init?(_ value: CoreNode, scopedVariables: [Variable]) {
        self.init(rawValue: value.content)
    }

    var value: String {
        switch self {
		case .text:
			return "text"
		case .dictionary:
			return "dictionary"

        }
    }
}

extension Jelly_QueryItemType {
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value)
    }
}
