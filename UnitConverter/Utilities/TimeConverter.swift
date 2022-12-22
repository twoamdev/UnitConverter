//
//  TimeConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/22/22.
//

import Foundation

struct TimeConverter{
    
    static func convertAtoB(typeA: String, typeB: String, value : String) -> String{
        
        if typeA == Time.hours.fullName && typeB == Time.hours.fullName {
            return value
        }
        if typeA == Time.hours.fullName && typeB == Time.minutes.fullName {
            return convertHoursToMinutes(value)
        }
        if typeA == Time.hours.fullName && typeB == Time.seconds.fullName {
            return convertHoursToSeconds(value)
        }
        if typeA == Time.minutes.fullName && typeB == Time.hours.fullName {
            return convertMinutesToHours(value)
        }
        if typeA == Time.minutes.fullName && typeB == Time.minutes.fullName {
            return value
        }
        if typeA == Time.minutes.fullName && typeB == Time.seconds.fullName {
            return convertMinutesToSeconds(value)
        }
        if typeA == Time.seconds.fullName && typeB == Time.hours.fullName {
            return convertSecondsToHours(value)
        }
        if typeA == Time.seconds.fullName && typeB == Time.minutes.fullName {
            return convertSecondsToMinutes(value)
        }
        if typeA == Time.seconds.fullName && typeB == Time.seconds.fullName {
            return value
        }
        
        
        return ""
    }
    
    static private func convertHoursToMinutes(_ value : String) -> String{
        return Converter.multiplyValue(value, multiplier: 60.0)
    }
    
    static private func convertHoursToSeconds(_ value : String) -> String{
        return Converter.multiplyValue(value, multiplier: (60.0 * 60.0))
    }
    
    static private func convertMinutesToHours(_ value : String) -> String{
        return Converter.multiplyValue(value, multiplier: (1.0/60.0))
    }
    
    static private func convertMinutesToSeconds(_ value : String) -> String{
        return Converter.multiplyValue(value, multiplier: 60.0)
    }
    
    static private func convertSecondsToHours(_ value : String) -> String{
        return Converter.multiplyValue(value, multiplier: ((1.0/60.0) * (1.0/60.0)))
    }
    
    static private func convertSecondsToMinutes(_ value : String) -> String{
        return Converter.multiplyValue(value, multiplier: (1.0/60.0))
    }
}
