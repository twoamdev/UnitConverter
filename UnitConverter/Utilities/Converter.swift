//
//  Converter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/19/22.
//

import Foundation
typealias op = InstructionOp

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
        case UnitType.volume.name:
            let volumeConversion = VolumeConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: volumeConversion)
        case UnitType.mass.name:
            let massConversion = MassConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: massConversion)
        case UnitType.energy.name:
            let energyConversion = EnergyConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: energyConversion)
        case UnitType.frequency.name:
            let freqConversion = FrequencyConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: freqConversion)
        case UnitType.area.name:
            let areaConversion = AreaConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: areaConversion)
        case UnitType.pressure.name:
            let pressureConversion = PressureConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: pressureConversion)
        case UnitType.planeAngle.name:
            let planeAngleConversion = PlaneAngleConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: planeAngleConversion)
        case UnitType.fuelEconomy.name:
            let fuelConverter = FuelConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: fuelConverter)
        case UnitType.digitalStorage.name:
            let digitalStorgeConverter = DigitalStorageConverter.convertAtoB(typeA: unitTypeA, typeB: unitTypeB, value: valueA)
            return convertedValue(value: digitalStorgeConverter)
        
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
            return trimTrailingZeros(formatValue(value: numValue))
        }
        else{
            return value
        }
    }
    
    static private func formatValue(value : Double) -> String{
        /*
        if !requireScientificNotation(value) {
            let roundedValue = roundValue(value)
            return roundedValue - floor(roundedValue) == 0.0 ? String(Int(roundedValue)) : String(roundedValue)
        }
        return String(value)
         */
        if value == 0{
            return "0"
        }
            
        if value >= 10000000 {
            let formatter = NumberFormatter()
            formatter.numberStyle = .scientific
            formatter.positiveFormat = "0.####E+0"
            formatter.exponentSymbol = "e"
            if let scientificFormatted = formatter.string(for: value) {
                return scientificFormatted
            }
            else{
                return String(value)
            }
        }
        else if value < 1.0{
            if value < 0.0001{
                let formatter = NumberFormatter()
                formatter.numberStyle = .scientific
                formatter.positiveFormat = "0.####E+0"
                formatter.exponentSymbol = "e"
                if let scientificFormatted = formatter.string(for: value) {
                    return scientificFormatted
                }
                else{
                    return String(value)
                }
            }
            else{
                return String(format: "%.6f", value)
            }
        }
        else{
            //1.0 would be 1
            //1.999 would 2
            let remainder = value - floor(value)
            if remainder <= 0.00001 && remainder >= 0.0{
                return String(Int(value))
            }
            else if remainder >= 0.999 {
                return String(Int(Int(value) + 1))
            }
            else{
                return String(format: "%.6f", value)
            }
        }
        
    }
    
    static private func trimTrailingZeros(_ value : String) -> String {
        
        if !value.contains(".") || value.lowercased().contains("e"){
            return value
        }
        
        
        var editValue : String = value
        for _ in 0..<128{
            if editValue.last == "0"{
                editValue = String(editValue.dropLast())
            }
            else{
                break
            }
        }
        
        if editValue.last == "."{
            editValue = String(editValue.dropLast())
        }
        
        return editValue
        
        //return ""
    }
}
