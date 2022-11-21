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
        case Length.nanometers.fullName:
            return convertNanometersToB(typeB,value)
        case Length.micrometers.fullName:
            return convertMicrometersToB(typeB,value)
        
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
        case Length.nanometers.fullName:
            return convertMetersToNanometers(value)
        case Length.micrometers.fullName:
            return convertMetersToMicrometers(value)
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
        case Length.nanometers.fullName:
            return convertFeetToNanometers(value)
        case Length.micrometers.fullName:
            return convertFeetToMicrometers(value)
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
        case Length.nanometers.fullName:
            return convertInchesToNanometers(value)
        case Length.micrometers.fullName:
            return convertInchesToMicrometers(value)
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
        case Length.nanometers.fullName:
            return convertKilometersToNanometers(value)
        case Length.micrometers.fullName:
            return convertKilometersToMicrometers(value)
        default:
            return ""
        }
    }
    
    static private func convertNanometersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertNanometersToMeters(value)
        case Length.feet.fullName:
            return convertNanometersToFeet(value)
        case Length.inches.fullName:
            return convertNanometersToInches(value)
        case Length.kilometers.fullName:
            return convertNanometersToKilometers(value)
        case Length.nanometers.fullName:
            return value
        case Length.micrometers.fullName:
            return convertNanometersToMicrometers(value)
        default:
            return ""
        }
    }
    
    static private func convertMicrometersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertMicrometersToMeters(value)
        case Length.feet.fullName:
            return convertMicrometersToFeet(value)
        case Length.inches.fullName:
            return convertMicrometersToInches(value)
        case Length.kilometers.fullName:
            return convertMicrometersToKilometers(value)
        case Length.nanometers.fullName:
            return convertMicrometersToNanometers(value)
        case Length.micrometers.fullName:
            return value
        default:
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
    
    static private func convertNanometersToMeters(_ value : String) -> String{
        if let numValue = Double(value){
            let convertedValue = numValue * 0.000000001
            return String(convertedValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertMicrometersToMeters(_ value : String) -> String{
        if let numValue = Double(value){
            let convertedValue = numValue * 0.000001
            return String(convertedValue)
        }
        else{
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
    
    static private func convertNanometersToFeet(_ value : String) -> String{
        return convertMetersToFeet(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToFeet(_ value : String) -> String{
        return convertMetersToFeet(convertMicrometersToMeters(value))
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
    
    static private func convertNanometersToInches(_ value : String) -> String{
        return convertMetersToInches(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToInches(_ value : String) -> String{
        return convertMetersToInches(convertMicrometersToMeters(value))
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
    
    static private func convertNanometersToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertMicrometersToMeters(value))
    }
    
    static private func convertMetersToNanometers(_ value : String) -> String{
        if let numValue = Double(value){
            let convertValue = numValue * 1000000000.0
            return String(convertValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertFeetToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertFeetToMeters(value))
    }
    
    static private func convertInchesToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertInchesToMeters(value))
    }
    
    static private func convertKilometersToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertKilometersToMeters(value))
    }
    
    static private func convertMicrometersToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertMicrometersToMeters(value))
    }
    
    static private func convertMetersToMicrometers(_ value : String) -> String{
        if let numValue = Double(value){
            let convertValue = numValue * 1000000.0
            return String(convertValue)
        }
        else{
            return ""
        }
    }
    
    static private func convertFeetToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertFeetToMeters(value))
    }
    
    static private func convertInchesToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertInchesToMeters(value))
    }
    
    static private func convertKilometersToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertKilometersToMeters(value))
    }
    
    static private func convertNanometersToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertNanometersToMeters(value))
    }
}
