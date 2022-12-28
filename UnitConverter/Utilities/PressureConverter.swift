//
//  PressureConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

struct PressureConverter{
    
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
        let elements : [ConversionElement] = [

            ConversionElement(
            Pressure.atmosphere.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.mult, 760.0)])),
            
            ConversionElement(
            Pressure.torr.fullName,
            previousFormula: Formula([Instruction(op.divide, 760.0)]),
            nextFormula: Formula([Instruction(op.mult, 0.0193367747)])),
            
            ConversionElement(
            Pressure.poundFeetPerSqInch.fullName,
            previousFormula: Formula([Instruction(op.divide, 0.0193367747)]),
            nextFormula: Formula([Instruction(op.mult, 0.068948)])),
            
            ConversionElement(
            Pressure.bar.fullName,
            previousFormula: Formula([Instruction(op.divide, 0.068948)]),
            nextFormula: Formula([Instruction(op.mult, 100000.0)])),
            
            ConversionElement(
            Pressure.pascal.fullName,
            previousFormula: Formula([Instruction(op.divide, 100000.0)]),
            nextFormula: Formula([Instruction(op.none)])),

            ]

        return ConversionTable(elements)
    }
}

