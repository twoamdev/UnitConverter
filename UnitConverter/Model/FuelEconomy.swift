//
//  FuelEconomy.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

enum FuelEconomy : CaseIterable, UnitProtocol{
   
    case milesPerGallon, milesPerImperialGallons, kilometersPerLiter, litersPer100Kilometers
    
    var abbreviation: String{
        switch self {
        case .milesPerGallon:
            return "mpg"
        case .milesPerImperialGallons:
            return "IMP mpg"
        case .kilometersPerLiter:
            return "km/L"
        case .litersPer100Kilometers:
            return "l/100 km"
        }
        
    }
    
    var fullName: String{
        switch self {
        case .milesPerGallon:
            return "miles per gallon"
        case .milesPerImperialGallons:
            return "miles per imperial gallon"
        case .kilometersPerLiter:
            return "kilometers per liter"
        case .litersPer100Kilometers:
            return "liters per 100 kilometers"
        }
    }
    
    

}



