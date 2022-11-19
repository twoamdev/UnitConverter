//
//  UnitTypes.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/19/22.
//

import Foundation


enum Units : CaseIterable {
    case length
    
    var type : String {
        switch self{
        case .length:
            return "length"
        }
    }
}

enum Length : CaseIterable{
    
    case meters, kilometers, feet, inches
    
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
        }
    }
}
