//
//  Energy.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/26/22.
//

import Foundation

enum Energy : CaseIterable, UnitProtocol{

    case joules, kilojoules, gramCalories, kilocalories, wattHours, kilowattHours, electronVolts, britishThermalUnits, USTherms, footPounds
    
    var abbreviation: String{
        switch self {
        case .joules:
            return "j"
        case .kilojoules:
            return "kj"
        case .gramCalories:
            return "gCal"
        case .kilocalories:
            return "kCal"
        case .wattHours:
            return "wt/hr"
        case .kilowattHours:
            return "kwt/hr"
        case .electronVolts:
            return "eV"
        case .britishThermalUnits:
            return "BTU"
        case .USTherms:
            return "thm"
        case .footPounds:
            return "lbf"
        }
    }
    
    var fullName: String{
        switch self {
        case .joules:
            return "joules"
        case .kilojoules:
            return "kilojoules"
        case .gramCalories:
            return "gram calories"
        case .kilocalories:
            return "kilogram calories"
        case .wattHours:
            return "watt hours"
        case .kilowattHours:
            return "kilowatt hours"
        case .electronVolts:
            return "electron volts"
        case .britishThermalUnits:
            return "british thermal units"
        case .USTherms:
            return "US therms"
        case .footPounds:
            return "foot-pounds"
        }
    }

}

