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
        case UnitType.length.name:
            let lengthConversion = LengthConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: lengthConversion)
        case UnitType.temperature.name:
            let temperatureConversion = TemperatureConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: temperatureConversion)
        case UnitType.speed.name:
            let speedConversion = SpeedConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: speedConversion)
        case UnitType.time.name:
            let timeConversion = TimeConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: timeConversion)
        default:
            return ""
        } 
    }
    
    static func multiplyValue(_ value : String, multiplier : Double) -> String{
        if let numValue = Double(value){
            let convertedValue = numValue * multiplier
            return String(convertedValue)
        }
        else{
            return ""
        }
    }
    
    static func subtractValue(_ value : String, subtractValue : Double) -> String{
        if let numValue = Double(value){
            let convertedValue = numValue - subtractValue
            return String(convertedValue)
        }
        else{
            return ""
        }
    }
    
    static func addValue(_ value : String, addValue : Double) -> String{
        if let numValue = Double(value){
            let convertedValue = numValue + addValue
            return String(convertedValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertedValue(value : String) -> String{
        if let numValue = Double(value){
            return formatValue(value: numValue)
        }
        else{
            return value
        }
    }
    
    static private func formatValue(value : Double) -> String{
        
        if !requireScientificNotation(value) {
            let roundedValue = roundValue(value)
            return roundedValue - floor(roundedValue) == 0.0 ? String(Int(roundedValue)) : String(roundedValue)
        }
        return String(value)
    }
    
    static func roundValue(_ value : Double) -> Double{

        //decide to which precision to return
        let precision = 6
        var defaultPrecision = round(value * calculatePrecisionValue(precision)) / calculatePrecisionValue(precision)
        for i in 1...4 {
            let higherPrecision = round(value * calculatePrecisionValue(precision + i)) / calculatePrecisionValue(precision + i)
            if defaultPrecision == higherPrecision{
                break
            }
            else{
                defaultPrecision = higherPrecision
            }
        }
        return defaultPrecision
    }
    
    static private func requireScientificNotation(_ value : Double) -> Bool {
        let stringValue = String(value).lowercased()
        return stringValue.contains("e") ? true : false
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
            return 10000.0
        case 5:
            return 100000.0
        case 6:
            return 1000000.0
        case 7:
            return 10000000.0
        case 8:
            return 100000000.0
        case 9:
            return 1000000000.0
        case 10:
            return 10000000000.0
        default:
            return 10.0
        }
    }
    
}
