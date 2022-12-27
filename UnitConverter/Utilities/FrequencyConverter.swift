//
//  FrequencyConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/27/22.
//

import Foundation

struct FrequencyConverter{
    
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
            Frequency.hertz.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            Frequency.kilohertz.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            Frequency.megahertz.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            Frequency.gigahertz.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000)]),
            nextFormula: Formula([Instruction(op.none)])),

            ]

        return ConversionTable(elements)
    }
}

