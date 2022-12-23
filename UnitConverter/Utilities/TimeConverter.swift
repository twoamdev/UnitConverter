//
//  TimeConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/22/22.
//

import Foundation
typealias parser = ConversionParser

struct TimeConverter{
    
    static func convertAtoB(typeA: String, typeB: String, value : String) -> String{
        let conversionTable = createTable()
        if let numValue : Double = Double(value){
            print("typeA: \(typeA)\ntypeB: \(typeB)\nnumValue: \(numValue)")
            let myValue = conversionTable.convertAtoB(unitNameA: typeA, unitNameB: typeB, numValue)
            print("value to return: \(myValue)\n\n*_*_*_*_*_*_*_*_*\n\n")
            return myValue
        }
        else{
            return ""
        }
    }
    
    static private func createTable() -> ConversionTable {
        //table must be ordered correctly for converting to work properly
        var elements : [ConversionElement] = []
        let century = ConversionElement(
            Time.centuries.fullName,
            convertToPreviousFormula: "\(parser.none)",
            convertToNextFormula: "\(parser.mult) 10 \(parser.stop)")
        elements.append(century)
        let decade = ConversionElement(
            Time.decades.fullName,
            convertToPreviousFormula: "\(parser.mult) .1 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 10 \(parser.stop)")
        elements.append(decade)
        let year = ConversionElement(
            Time.years.fullName,
            convertToPreviousFormula: "\(parser.mult) .1 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 12 \(parser.stop)")
        elements.append(year)
        let month = ConversionElement(
            Time.months.fullName,
            convertToPreviousFormula: "\(parser.divide) 12 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 4.34524 \(parser.stop)")
        elements.append(month)
        let week = ConversionElement(
            Time.weeks.fullName,
            convertToPreviousFormula: "\(parser.divide) 4.34524 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 7 \(parser.stop)")
        elements.append(week)
        let day = ConversionElement(
            Time.days.fullName,
            convertToPreviousFormula: "\(parser.divide) 7 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 24 \(parser.stop)")
        elements.append(day)
        let hour = ConversionElement(
            Time.hours.fullName,
            convertToPreviousFormula: "\(parser.divide) 24 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 60 \(parser.stop)")
        elements.append(hour)
        let minute = ConversionElement(
            Time.minutes.fullName,
            convertToPreviousFormula: "\(parser.divide) 60 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 60 \(parser.stop)")
        elements.append(minute)
        let second = ConversionElement(
            Time.seconds.fullName,
            convertToPreviousFormula: "\(parser.divide) 60 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 1000 \(parser.stop)")
        elements.append(second)
        let millisecond = ConversionElement(
            Time.milliseconds.fullName,
            convertToPreviousFormula: "\(parser.divide) 1000 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 1000 \(parser.stop)")
        elements.append(millisecond)
        let microsecond = ConversionElement(
            Time.microseconds.fullName,
            convertToPreviousFormula: "\(parser.divide) 1000 \(parser.stop)",
            convertToNextFormula: "\(parser.mult) 1000 \(parser.stop)")
        elements.append(microsecond)
        let nanosecond = ConversionElement(
            Time.nanoseconds.fullName,
            convertToPreviousFormula: "\(parser.divide) 1000 \(parser.stop)",
            convertToNextFormula: "\(parser.none)")
        elements.append(nanosecond)
        
        return ConversionTable(elements)
    }
    
    
    
    /*
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
     
     */
}
