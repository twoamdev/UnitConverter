//
//  Speed.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/22/22.
//

import Foundation

enum Speed : CaseIterable, UnitProtocol{
    
    case milesPerHour, feetPerSecond, metersPerSecond, kilometersPerHour, knots
    
    var abbreviation: String {
        switch self {
        case .milesPerHour:
            return "mph"
        case .feetPerSecond:
            return "fps"
        case .metersPerSecond:
            return "m/s"
        case .kilometersPerHour:
            return "km/h"
        case .knots:
            return "Kt"
        }
    }
    
    var fullName: String {
        switch self {
        case .milesPerHour:
            return "miles per hour"
        case .feetPerSecond:
            return "feet per second"
        case .metersPerSecond:
            return "meters per second"
        case .kilometersPerHour:
            return "kilometers per hour"
        case .knots:
            return "knots"
        }
    }
}
