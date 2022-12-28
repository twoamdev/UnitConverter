//
//  Area.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

enum Area : CaseIterable, UnitProtocol{
   
    case squareInches, squareFeet, squareYards, acres, squareMiles, squareMeters, hectares, squareKilometers
    
    var abbreviation: String{
        switch self {
        case .squareInches:
            return "sq in"
        case .squareFeet:
            return "sq ft"
        case .squareYards:
            return "sq yd"
        case .acres:
            return "ac"
        case .squareMiles:
            return "sq mi"
        case .squareMeters:
            return "sq m"
        case .hectares:
            return "HA"
        case .squareKilometers:
            return "sq km"
        }
        
    }
    
    var fullName: String{
        switch self {
        case .squareInches:
            return "square inches"
        case .squareFeet:
            return "square feet"
        case .squareYards:
            return "square yards"
        case .acres:
            return "acres"
        case .squareMiles:
            return "square miles"
        case .squareMeters:
            return "square meters"
        case .hectares:
            return "hectares"
        case .squareKilometers:
            return "square kilometers"
        }
    }
    
    

}


