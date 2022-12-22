//
//  Time.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/22/22.
//

import Foundation

enum Time : CaseIterable, UnitProtocol{
    
    case hours, minutes, seconds
    
    var abbreviation: String {
        switch self {
        case .hours:
            return "hrs"
        case .minutes:
            return "min"
        case .seconds:
            return "sec"
        }
    }
    
    var fullName: String {
        switch self {
        case .hours:
            return "hours"
        case .minutes:
            return "minutes"
        case .seconds:
            return "seconds"
        }
    }
}
