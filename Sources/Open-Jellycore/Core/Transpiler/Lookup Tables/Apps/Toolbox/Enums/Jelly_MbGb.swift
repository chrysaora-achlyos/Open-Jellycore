//
//  Jelly_MbGb.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

enum Jelly_MbGb: String, JellyEnum, Codable {
	case MB
	case GB

    init?(_ value: CoreNode, scopedVariables: [Variable]) {
        self.init(rawValue: value.content)
    }

    var value: String {
        switch self {
		case .MB:
			return "MB"
		case .GB:
			return "GB"

        }
    }
}

extension Jelly_MbGb {
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value)
    }
}
