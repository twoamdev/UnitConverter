//
//  Converter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/19/22.
//

import Foundation

struct Converter {
    
    static func convertAtoB(units: String, unitTypeA : String, unitTypeB : String, valueA : String) -> String{
        
        switch units {
        case Units.length.type:
            print("units are length")
            return LengthConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
        default:
            return "0.0"
        }
        
        
    }
    
    
}
