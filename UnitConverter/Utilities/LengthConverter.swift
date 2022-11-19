//
//  LengthConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/19/22.
//

import Foundation

struct LengthConverter {
    static func convertAtoB(typeA: String, typeB: String, value : String) -> String{
        print("got to LengthConverter")
        
        switch typeA {
        case Length.meters.fullName:
            print("A unit are meters")
            return convertMetersToB(typeB,value)
        default:
            print("returned default on switch Type A in Length Converter")
            return ""
        }
    }
    
    static func convertMetersToB(_ typeB: String, _ value: String) -> String{
        print("got to convertMetersToB")
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
    
    static func convertMetersToFeet(_ value : String) -> String{
        //1 Meters = 3.280839895 feet or ft. 1 Feet = 0.3048 Meters
        if let metersValue = Double(value){
            let feetValue = metersValue * 3.280839895
            return String(feetValue)
        }
        else{
            return ""
        }
    }
    
    static func convertMetersToInches(_ value : String) -> String{
        let feet = convertMetersToFeet(value)
        if let feetValue = Double(feet){
            let inchesValue = feetValue * 12.0
            return String(inchesValue)
        }
        else{
            return ""
        }
    }
    
    static func convertMetersToKilometers(_ value : String) -> String{
        //1 Meters = 0.001 kilometers
        if let metersValue = Double(value){
            let kiloValue = metersValue * 0.001
            return String(kiloValue)
        }
        else{
            return ""
        }
    }
}
