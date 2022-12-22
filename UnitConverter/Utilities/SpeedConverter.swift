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
        
        if typeA == Speed.milesPerHour.fullName && typeB == Speed.metersPerSecond.fullName {
            return convertMilesPerHourToMetersPerSecond(value)
        }
        
        if typeA == Speed.milesPerHour.fullName && typeB == Speed.kilometersPerHour.fullName {
            return convertMilesPerHourToKilometersPerHour(value)
        }
        
        if typeA == Speed.milesPerHour.fullName && typeB == Speed.knots.fullName {
            return convertMilesPerHourToKnots(value)
        }
        
        if typeA == Speed.feetPerSecond.fullName && typeB == Speed.feetPerSecond.fullName {
            return value
        }
        
        if typeA == Speed.feetPerSecond.fullName && typeB == Speed.milesPerHour.fullName {
            return convertFeetPerSecondToMilesPerHour(value)
        }
        
        if typeA == Speed.feetPerSecond.fullName && typeB == Speed.metersPerSecond.fullName {
            return convertFeetPerSecondToMetersPerSecond(value)
        }
        
        if typeA == Speed.feetPerSecond.fullName && typeB == Speed.kilometersPerHour.fullName {
            return convertFeetPerSecondToKilometersPerHour(value)
        }
        
        if typeA == Speed.feetPerSecond.fullName && typeB == Speed.knots.fullName {
            return convertFeetPerSecondToKnots(value)
        }
        
        if typeA == Speed.metersPerSecond.fullName && typeB == Speed.metersPerSecond.fullName {
            return value
        }
        
        if typeA == Speed.metersPerSecond.fullName && typeB == Speed.milesPerHour.fullName {
            return convertMetersPerSecondToMilesPerHour(value)
        }
        
        if typeA == Speed.metersPerSecond.fullName && typeB == Speed.feetPerSecond.fullName {
            return convertMetersPerSecondToFeetPerSecond(value)
        }
        
        if typeA == Speed.metersPerSecond.fullName && typeB == Speed.kilometersPerHour.fullName {
            return convertMetersPerSecondToKilometersPerHour(value)
        }
        
        if typeA == Speed.metersPerSecond.fullName && typeB == Speed.knots.fullName {
            return convertMetersPerSecondToKnots(value)
        }
        
        if typeA == Speed.kilometersPerHour.fullName && typeB == Speed.kilometersPerHour.fullName {
            return value
        }
        
        if typeA == Speed.kilometersPerHour.fullName && typeB == Speed.milesPerHour.fullName {
            return convertKilometersPerHourToMilesPerHour(value)
        }
        
        if typeA == Speed.kilometersPerHour.fullName && typeB == Speed.feetPerSecond.fullName {
            return convertKilometersPerHourToFeetPerSecond(value)
        }
        
        if typeA == Speed.kilometersPerHour.fullName && typeB == Speed.metersPerSecond.fullName {
            return convertKilometersPerHourToMetersPerSecond(value)
        }
        
        if typeA == Speed.kilometersPerHour.fullName && typeB == Speed.knots.fullName {
            return convertKilometersPerHourToKnots(value)
        }
        
        if typeA == Speed.knots.fullName && typeB == Speed.knots.fullName {
            return value
        }
        
        if typeA == Speed.knots.fullName && typeB == Speed.milesPerHour.fullName {
            return convertKnotsToMilesPerHour(value)
        }
        
        if typeA == Speed.knots.fullName && typeB == Speed.feetPerSecond.fullName {
            return convertKnotsToFeetPerSecond(value)
        }
        
        if typeA == Speed.knots.fullName && typeB == Speed.metersPerSecond.fullName {
            return convertKnotsToMetersPerSecond(value)
        }
        
        if typeA == Speed.knots.fullName && typeB == Speed.kilometersPerHour.fullName {
            return convertKnotsToKilometersPerHour(value)
        }

        return ""
    }
    
    static private func convertMilesPerHourToFeetPerSecond(_ value : String) -> String{
        let feetPerHour = LengthConverter.convertAtoB(typeA: Length.miles.fullName, typeB: Length.feet.fullName, value: value)
        return Converter.multiplyValue(feetPerHour, multiplier: ((1.0/60.0)*(1.0/60.0)))
    }
    
    static private func convertMilesPerHourToMetersPerSecond(_ value : String) -> String{
        let metersPerHour = LengthConverter.convertAtoB(typeA: Length.miles.fullName, typeB: Length.meters.fullName, value: value)
        return Converter.multiplyValue(metersPerHour, multiplier: ((1.0/60.0)*(1.0/60.0)))
    }
    
    static private func convertMilesPerHourToKilometersPerHour(_ value : String) -> String{
        let kmPerHour = LengthConverter.convertAtoB(typeA: Length.miles.fullName, typeB: Length.kilometers.fullName, value: value)
        return kmPerHour
    }
    
    static private func convertMilesPerHourToKnots(_ value : String) -> String{
        let nauticalMilesPerHour = LengthConverter.convertAtoB(typeA: Length.miles.fullName, typeB: Length.nauticalMiles.fullName, value: value)
        return nauticalMilesPerHour
    }
    
    static private func convertFeetPerSecondToMilesPerHour(_ value : String) -> String{
        let milesPerSecond = LengthConverter.convertAtoB(typeA: Length.feet.fullName, typeB: Length.miles.fullName, value: value)
        return Converter.multiplyValue(milesPerSecond, multiplier: (60.0 * 60.0))
    }
    
    static private func convertFeetPerSecondToMetersPerSecond(_ value : String) -> String{
        let meterPerSecond = LengthConverter.convertAtoB(typeA: Length.feet.fullName, typeB: Length.meters.fullName, value: value)
        return meterPerSecond
    }
    
    static private func convertFeetPerSecondToKilometersPerHour(_ value : String) -> String{
        let kmPerSecond = LengthConverter.convertAtoB(typeA: Length.feet.fullName, typeB: Length.kilometers.fullName, value: value)
        return Converter.multiplyValue(kmPerSecond, multiplier: (60.0 * 60.0))
    }
    
    static private func convertFeetPerSecondToKnots(_ value : String) -> String{
        let nauticalMilesPerSecond = LengthConverter.convertAtoB(typeA: Length.feet.fullName, typeB: Length.nauticalMiles.fullName, value: value)
        return Converter.multiplyValue(nauticalMilesPerSecond, multiplier: (60.0 * 60.0))
    }
    
    static private func convertMetersPerSecondToMilesPerHour(_ value : String) -> String{
        let milesPerSecond = LengthConverter.convertAtoB(typeA: Length.meters.fullName, typeB: Length.miles.fullName, value: value)
        return Converter.multiplyValue(milesPerSecond, multiplier: ((60.0)*(60.0)))
    }

    static private func convertMetersPerSecondToFeetPerSecond(_ value : String) -> String{
        let fps = LengthConverter.convertAtoB(typeA: Length.meters.fullName, typeB: Length.feet.fullName, value: value)
        return fps
    }

    static private func convertMetersPerSecondToKilometersPerHour(_ value : String) -> String{
        let kmPerSecond = LengthConverter.convertAtoB(typeA: Length.meters.fullName, typeB: Length.kilometers.fullName, value: value)
        return Converter.multiplyValue(kmPerSecond, multiplier: ((60.0)*(60.0)))
    }
    
    static private func convertMetersPerSecondToKnots(_ value : String) -> String{
        let nauticalMilesPerSecond = LengthConverter.convertAtoB(typeA: Length.meters.fullName, typeB: Length.nauticalMiles.fullName, value: value)
        return Converter.multiplyValue(nauticalMilesPerSecond, multiplier: ((60.0)*(60.0)))
    }
    
    static private func convertKilometersPerHourToMilesPerHour(_ value : String) -> String{
        let milesPerHour = LengthConverter.convertAtoB(typeA: Length.kilometers.fullName, typeB: Length.miles.fullName, value: value)
        return milesPerHour
    }
    
    static private func convertKilometersPerHourToFeetPerSecond(_ value : String) -> String{
        let feetPerHour = LengthConverter.convertAtoB(typeA: Length.kilometers.fullName, typeB: Length.feet.fullName, value: value)
        return Converter.multiplyValue(feetPerHour, multiplier: ((1.0/60.0)*(1.0/60.0)))
    }
    
    static private func convertKilometersPerHourToMetersPerSecond(_ value : String) -> String{
        let metersPerHour = LengthConverter.convertAtoB(typeA: Length.kilometers.fullName, typeB: Length.meters.fullName, value: value)
        return Converter.multiplyValue(metersPerHour, multiplier: ((1.0/60.0)*(1.0/60.0)))
    }
    
    static private func convertKilometersPerHourToKnots(_ value : String) -> String{
        let nauticalMilesPerHour = LengthConverter.convertAtoB(typeA: Length.kilometers.fullName, typeB: Length.nauticalMiles.fullName, value: value)
        return nauticalMilesPerHour
    }
    
    static private func convertKnotsToMilesPerHour(_ value : String) -> String{
        let milesPerHour = LengthConverter.convertAtoB(typeA: Length.nauticalMiles.fullName, typeB: Length.miles.fullName, value: value)
        return milesPerHour
    }
    
    static private func convertKnotsToFeetPerSecond(_ value : String) -> String{
        let feetPerHour = LengthConverter.convertAtoB(typeA: Length.nauticalMiles.fullName, typeB: Length.feet.fullName, value: value)
        return Converter.multiplyValue(feetPerHour, multiplier: ((1.0/60.0)*(1.0/60.0)))
    }
    
    static private func convertKnotsToMetersPerSecond(_ value : String) -> String{
        let metersPerHour = LengthConverter.convertAtoB(typeA: Length.nauticalMiles.fullName, typeB: Length.meters.fullName, value: value)
        return Converter.multiplyValue(metersPerHour, multiplier: ((1.0/60.0)*(1.0/60.0)))
    }
    
    static private func convertKnotsToKilometersPerHour(_ value : String) -> String{
        let kmPerHour = LengthConverter.convertAtoB(typeA: Length.nauticalMiles.fullName, typeB: Length.kilometers.fullName, value: value)
        return kmPerHour
    }
}
