//
//  Mass.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/26/22.
//

import Foundation

enum Mass : CaseIterable, UnitProtocol{

    case metricTons, kilograms, grams, milligrams, micrograms, imperialTons, USTons, stones, pounds, ounces
    
    var abbreviation: String{
        switch self {
        case .metricTons:
            return "mt"
        case .kilograms:
            return "kg"
        case .grams:
            return "g"
        case .milligrams:
            return "mg"
        case .micrograms:
            return "MCG"
        case .imperialTons:
            return "IMP t"
        case .USTons:
            return "t"
        case .stones:
            return "st."
        case .pounds:
            return "lb"
        case .ounces:
            return "oz"
        }
    }
    
    var fullName: String{
        switch self {
        case .metricTons:
            return "metric ton"
        case .kilograms:
            return "kilogram"
        case .grams:
            return "gram"
        case .milligrams:
            return "milligram"
        case .micrograms:
            return "microgram"
        case .imperialTons:
            return "imperial ton"
        case .USTons:
            return "US ton"
        case .stones:
            return "stone"
        case .pounds:
            return "pound"
        case .ounces:
            return "ounce"
        }
    }

}
