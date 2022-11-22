//
//  UnitTypes.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/19/22.
//

import Foundation


enum Units : CaseIterable {
    case length, temperature
    
    var type : String {
        switch self{
        case .length:
            return "length"
        case .temperature:
            return "temperature"
        }
    }
}

