//
//  TimeConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/22/22.
//

import Foundation
typealias op = InstructionOp

struct TimeConverter{
    
    static func convertAtoB(typeA: String, typeB: String, value : String) -> String{
        let conversionTable = createTable()
        if let numValue : Double = Double(value){
            let myValue = conversionTable.convertAtoB(unitNameA: typeA, unitNameB: typeB, numValue)
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
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.mult, 10)]))
        elements.append(century)
        let decade = ConversionElement(
            Time.decades.fullName,
            previousFormula: Formula([Instruction(op.mult, 0.1)]),
            nextFormula: Formula([Instruction(op.mult, 10)]))
        elements.append(decade)
        let year = ConversionElement(
            Time.years.fullName,
            previousFormula: Formula([Instruction(op.mult, 0.1)]),
            nextFormula: Formula([Instruction(op.mult, 12)]))
        elements.append(year)
        let month = ConversionElement(
            Time.months.fullName,
            previousFormula: Formula([Instruction(op.divide, 12)]),
            nextFormula: Formula([Instruction(op.mult, 4.34524)]))
        elements.append(month)
        let week = ConversionElement(
            Time.weeks.fullName,
            previousFormula: Formula([Instruction(op.divide, 4.34524)]),
            nextFormula: Formula([Instruction(op.mult, 7)]))
        elements.append(week)
        let day = ConversionElement(
            Time.days.fullName,
            previousFormula: Formula([Instruction(op.divide, 7)]),
            nextFormula: Formula([Instruction(op.mult, 24)]))
        elements.append(day)
        let hour = ConversionElement(
            Time.hours.fullName,
            previousFormula: Formula([Instruction(op.divide, 24)]),
            nextFormula: Formula([Instruction(op.mult, 60)]))
        elements.append(hour)
        let minute = ConversionElement(
            Time.minutes.fullName,
            previousFormula: Formula([Instruction(op.divide, 60)]),
            nextFormula: Formula([Instruction(op.mult, 60)]))
        elements.append(minute)
        let second = ConversionElement(
            Time.seconds.fullName,
            previousFormula: Formula([Instruction(op.divide, 60)]),
            nextFormula: Formula([Instruction(op.mult, 1000)]))
        elements.append(second)
        let millisecond = ConversionElement(
            Time.milliseconds.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)]))
        elements.append(millisecond)
        let microsecond = ConversionElement(
            Time.microseconds.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)]))
        elements.append(microsecond)
        let nanosecond = ConversionElement(
            Time.nanoseconds.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.none)]))
        elements.append(nanosecond)
        
        return ConversionTable(elements)
    }    
}
