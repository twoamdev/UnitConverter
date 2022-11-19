//
//  LengthConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/19/22.
//

import Foundation

struct LengthConverter {
    static func convertAtoB(typeA: String, typeB: String, value : String) -> String{
        
        switch typeA {
        case Length.meters.fullName:
            return convertMetersToB(typeB,value)
        case Length.feet.fullName:
            return convertFeetToB(typeB,value)
        case Length.inches.fullName:
            return convertInchesToB(typeB,value)
        case Length.kilometers.fullName:
            return convertKilometersToB(typeB,value)
        default:
            return ""
        }
    }
    
    static private func convertMetersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return value
        case Length.feet.fullName:
            return convertMetersToFeet(value)
        case Length.inches.fullName:
            return convertMetersToInches(value)
        case Length.kilometers.fullName:
            return convertMetersToKilometers(value)
        default:
            return ""
        }
    }
    
    static private func convertFeetToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertFeetToMeters(value)
        case Length.feet.fullName:
            return value
        case Length.inches.fullName:
            return convertFeetToInches(value)
        case Length.kilometers.fullName:
            return convertFeetToKilometers(value)
        default:
            return ""
        }
    }
    
    static private func convertInchesToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertInchesToMeters(value)
        case Length.feet.fullName:
            return convertInchesToFeet(value)
        case Length.inches.fullName:
            return value
        case Length.kilometers.fullName:
            return convertInchesToKilometers(value)
        default:
            return ""
        }
    }
    
    static private func convertKilometersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertKilometersToMeters(value)
        case Length.feet.fullName:
            return convertKilometersToFeet(value)
        case Length.inches.fullName:
            return convertKilometersToInches(value)
        case Length.kilometers.fullName:
            return value
        default:
            return ""
        }
    }
    
    static private func convertKilometersToFeet(_ value : String) -> String{
        return convertMetersToFeet(convertKilometersToMeters(value))
    }
    
    static private func convertMetersToFeet(_ value : String) -> String{
        //1 Meters = 3.280839895 feet
        if let metersValue = Double(value){
            let feetValue = metersValue * 3.280839895
            return String(feetValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertInchesToFeet(_ value : String) -> String{
        if let inchesValue = Double(value){
            let feetValue = inchesValue / 12.0
            return String(feetValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertFeetToMeters(_ value : String) -> String{
        //1 Foot = 0.3048 Meters
        if let feetValue = Double(value){
            let metersValue = feetValue * 0.3048
            return String(metersValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertKilometersToMeters(_ value : String) -> String{
        if let kiloValue = Double(value){
            let metersValue = kiloValue * 1000.0
            return String(metersValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertInchesToMeters(_ value : String) -> String{
        return convertFeetToMeters(convertInchesToFeet(value))
    }
    
    
    
    static private func convertMetersToInches(_ value : String) -> String{
        let feet = convertMetersToFeet(value)
        if let feetValue = Double(feet){
            let inchesValue = feetValue * 12.0
            return String(inchesValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertFeetToInches(_ value : String) -> String{
        return convertMetersToInches(convertFeetToMeters(value))
    }
    
    static private func convertKilometersToInches(_ value : String) -> String{
        return convertKilometersToMeters(convertMetersToInches(value))
    }
    
    static private func convertMetersToKilometers(_ value : String) -> String{
        //1 Meters = 0.001 kilometers
        if let metersValue = Double(value){
            let kiloValue = metersValue * 0.001
            return String(kiloValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertFeetToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertFeetToMeters(value))
    }
    
    static private func convertInchesToKilometers(_ value : String) -> String{
        return convertFeetToKilometers(convertInchesToFeet(value))
    }
}
