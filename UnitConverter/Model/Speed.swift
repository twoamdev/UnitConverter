//
//  Speed.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/22/22.
//

import Foundation

enum Speed : CaseIterable, UnitProtocol{
    
    case milesPerHour, feetPerSecond
    
    var abbreviation: String {
        switch self {
        case .milesPerHour:
            return "mph"
        case .feetPerSecond:
            return "fps"
        }
    }
    
    var fullName: String {
        switch self {
        case .milesPerHour:
            return "miles per hour"
        case .feetPerSecond:
            return "feet per second"
        }
    }
}
