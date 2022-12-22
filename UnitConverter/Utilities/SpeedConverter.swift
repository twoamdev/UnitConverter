//
//  SpeedConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/22/22.
//

import Foundation

struct SpeedConverter{
    
    static func convertAtoB(typeA: String, typeB: String, value : String) -> String{
        
        if typeA == Speed.milesPerHour.fullName && typeB == Speed.milesPerHour.fullName {
            return value
        }
        
        if typeA == Speed.milesPerHour.fullName && typeB == Speed.feetPerSecond.fullName {
            return convertMilesPerHourToFeetPerSecond(value)
        }
        
        if typeA == Speed.feetPerSecond.fullName && typeB == Speed.feetPerSecond.fullName {
            return value
        }
        
        if typeA == Speed.feetPerSecond.fullName && typeB == Speed.milesPerHour.fullName {
            return convertFeetPerSecondToMilesPerHour(value)
        }

        return ""
    }
    
    static private func convertMilesPerHourToFeetPerSecond(_ value : String) -> String{
        let feetPerHour = LengthConverter.convertAtoB(typeA: Length.miles.fullName, typeB: Length.feet.fullName, value: value)
        return Converter.multiplyValue(feetPerHour, multiplier: ((1.0/60.0)*(1.0/60.0)))
    }
    
    static private func convertFeetPerSecondToMilesPerHour(_ value : String) -> String{
        let milesPerSecond = LengthConverter.convertAtoB(typeA: Length.feet.fullName, typeB: Length.miles.fullName, value: value)
        return Converter.multiplyValue(milesPerSecond, multiplier: (60.0 * 60.0))
    }
}
