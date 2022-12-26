//
//  Volume.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/24/22.
//

import Foundation

enum Volume : CaseIterable, UnitProtocol{
    
    case USGallons, USQuarts, USPints, USCups, USLegalCups, USOunces, USTablespoons, USTeaspoons, liters, milliliters, cubicMeters, imperialGallons, imperialQuarts, imperialPints, imperialCups, imperialOunces,imperialTablespoons, imperialTeaspoons, cubicFeet, cubicInches
    
    var abbreviation: String {
        switch self {
        case .USGallons:
            return "gal"
        case .USQuarts:
            return "qt"
        case .USPints:
            return "pt"
        case .USCups:
            return "c"
        case .USLegalCups:
            return "lcup"
        case .USOunces:
            return "oz"
        case .USTablespoons:
            return "tbsp"
        case .USTeaspoons:
            return "tsp"
        case .cubicMeters:
            return "cu m"
        case .liters:
            return "l"
        case .milliliters:
            return "ml"
        case .imperialGallons:
            return "IMP gal"
        case .imperialQuarts:
            return "IMP qt"
        case .imperialPints:
            return "IMP pt"
        case .imperialCups:
            return "IMP c"
        case .imperialOunces:
            return "IMP oz"
        case .imperialTablespoons:
            return "IMP tbsp"
        case .imperialTeaspoons:
            return "IMP tsp"
        case .cubicFeet:
            return "cu ft"
        case .cubicInches:
            return "cu in"
        }
    }
    
    var fullName: String {
        switch self {
        case .USGallons:
            return "US Liquid Gallons"
        case .USQuarts:
            return "US Liquid Quarts"
        case .USPints:
            return "US Liquid Pints"
        case .USCups:
            return "US Liquid Cups"
        case .USLegalCups:
            return "US Legal Cups"
        case .USOunces:
            return "US Liquid Ounces"
        case .USTablespoons:
            return "US Tablespoons"
        case .USTeaspoons:
            return "US Teaspoons"
        case .cubicMeters:
            return "Cubic Meters"
        case .liters:
            return "Liters"
        case .milliliters:
            return "Milliliters"
        case .imperialGallons:
            return "Imperial Gallons"
        case .imperialQuarts:
            return "Imperial Quarts"
        case .imperialPints:
            return "Imperial Pints"
        case .imperialCups:
            return "Imperial Cups"
        case .imperialOunces:
            return "Imperial Ounces"
        case .imperialTablespoons:
            return "Imperial Tablespoons"
        case .imperialTeaspoons:
            return "Imperial Teaspoons"
        case .cubicFeet:
            return "Cubic Feet"
        case .cubicInches:
            return "Cubic Inches"
        }
    }
}

