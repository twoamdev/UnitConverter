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
            return "US liquid gallons"
        case .USQuarts:
            return "US liquid guarts"
        case .USPints:
            return "US liquid pints"
        case .USCups:
            return "US liquid cups"
        case .USLegalCups:
            return "US legal cups"
        case .USOunces:
            return "US liquid ounces"
        case .USTablespoons:
            return "US tablespoons"
        case .USTeaspoons:
            return "US teaspoons"
        case .cubicMeters:
            return "cubic meters"
        case .liters:
            return "liters"
        case .milliliters:
            return "milliliters"
        case .imperialGallons:
            return "imperial gallons"
        case .imperialQuarts:
            return "imperial quarts"
        case .imperialPints:
            return "imperial pints"
        case .imperialCups:
            return "imperial cups"
        case .imperialOunces:
            return "imperial ounces"
        case .imperialTablespoons:
            return "imperial tablespoons"
        case .imperialTeaspoons:
            return "imperial teaspoons"
        case .cubicFeet:
            return "cubic feet"
        case .cubicInches:
            return "cubic inches"
        }
    }
}

