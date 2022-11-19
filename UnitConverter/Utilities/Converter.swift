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
            let lengthConversion = LengthConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return roundValue(value: lengthConversion, precision: 4)
            
        default:
            return "0.0"
        }
        
        
    }
    
    static private func roundValue(value : String, precision : Int) -> String{
        if let numValue = Double(value){
            let precisionValue : Double = calculatePrecisionValue(precision)
            let roundedValue = round(numValue * precisionValue) / precisionValue
            let roundedStringValue =  roundedValue - floor(roundedValue) == 0.0 ? String(Int(roundedValue)) : String(roundedValue)
            return roundedStringValue
        }
        else{
            return value
        }
    }
    
    static private func calculatePrecisionValue(_ precision : Int) -> Double{
        // expecting an int from 1 to 10
        switch precision {
        case 1:
            return 10.0
        case 2:
            return 100.0
        case 3:
            return 1000.0
        case 4:
            return 1000.0
        case 5:
            return 10000.0
        case 6:
            return 100000.0
        case 7:
            return 1000000.0
        case 8:
            return 10000000.0
        case 9:
            return 100000000.0
        case 10:
            return 1000000000.0
        default:
            return 10.0
        }
    }
    
    
}
