//
//  Mass.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/26/22.
//

import Foundation

enum Mass : CaseIterable, UnitProtocol{

    case metricTon, kilogram, gram, milligram, microgram, imperialTon, USTon, stone, pound, ounce
    
    var abbreviation: String{
        switch self {
        case .metricTon:
            return "mt"
        case .kilogram:
            return "kg"
        case .gram:
            return "g"
        case .milligram:
            return "mg"
        case .microgram:
            return "MCG"
        case .imperialTon:
            return "IMP t"
        case .USTon:
            return "t"
        case .stone:
            return "st."
        case .pound:
            return "lb"
        case .ounce:
            return "oz"
        }
    }
    
    var fullName: String{
        switch self {
        case .metricTon:
            return "metric ton"
        case .kilogram:
            return "kilogram"
        case .gram:
            return "gram"
        case .milligram:
            return "milligram"
        case .microgram:
            return "microgram"
        case .imperialTon:
            return "imperial ton"
        case .USTon:
            return "US ton"
        case .stone:
            return "stone"
        case .pound:
            return "pound"
        case .ounce:
            return "ounce"
        }
    }

}
