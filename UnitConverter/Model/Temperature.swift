//
//  Temperature.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/22/22.
//

import Foundation

enum Temperature : CaseIterable{
    
    case fahrenheit, celsius, kelvin
    
    var abbreviation: String {
        switch self {
        case .fahrenheit:
            return "F"
        case .celsius:
            return "C"
        case .kelvin:
            return "K"
        }
    }
    
    var fullName: String {
        switch self {
        case .fahrenheit:
            return "fahrenheit"
        case .celsius:
            return "celsius"
        case .kelvin:
            return "kelvin"
        }
    }
}
