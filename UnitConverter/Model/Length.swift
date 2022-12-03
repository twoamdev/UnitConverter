//
//  Length.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/22/22.
//

import Foundation


enum Length : CaseIterable, UnitProtocol{
    
    case nanometers, micrometers, millimeters, centimeters, meters, kilometers,
         inches, feet, yards, miles, nauticalMiles
    
    var abbreviation: String {
        switch self {
        case .meters:
            return "m"
        case .kilometers:
            return "km"
        case .inches:
            return "in"
        case .feet:
            return "ft"
        case .nanometers:
            return "nm"
        case .micrometers:
            return "um"
        case .millimeters:
            return "mm"
        case .centimeters:
            return "cm"
        case .yards:
            return "yd"
        case .miles:
            return "mi"
        case .nauticalMiles:
            return "NM"
        }
    }
    
    var fullName: String {
        switch self {
        case .meters:
            return "meters"
        case .kilometers:
            return "kilometers"
        case .inches:
            return "inches"
        case .feet:
            return "feet"
        case .nanometers:
            return "nanometers"
        case .micrometers:
            return "micrometers"
        case .millimeters:
            return "millimeters"
        case .centimeters:
            return "centimeters"
        case .yards:
            return "yards"
        case .miles:
            return "miles"
        case .nauticalMiles:
            return "nautical miles"
        }
    }
}
