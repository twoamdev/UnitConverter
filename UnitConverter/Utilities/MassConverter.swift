//
//  MassConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/26/22.
//

import Foundation

struct MassConverter{
    
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
            Mass.stones.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.mult, 224)])),
            
            ConversionElement(
            Mass.ounces.fullName,
            previousFormula: Formula([Instruction(op.divide, 224)]),
            nextFormula: Formula([Instruction(op.divide, 16)])),
            
            ConversionElement(
            Mass.pounds.fullName,
            previousFormula: Formula([Instruction(op.mult, 16)]),
            nextFormula: Formula([Instruction(op.divide, 2000)])),
            
            ConversionElement(
            Mass.USTons.fullName,
            previousFormula: Formula([Instruction(op.mult, 2000)]),
            nextFormula: Formula([Instruction(op.mult, 2000),
                                  Instruction(op.divide, 2240)])),
            
            ConversionElement(
            Mass.imperialTons.fullName,
            previousFormula: Formula([Instruction(op.mult, 2240),
                                      Instruction(op.divide, 2000)]),
            nextFormula: Formula([Instruction(op.mult, 2240),
                                  Instruction(op.divide, 2.20462262185),
                                  Instruction(op.divide, 1000)])),

            ConversionElement(
            Mass.metricTons.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000),
                                      Instruction(op.mult, 2.20462262185),
                                      Instruction(op.divide, 2240)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.kilograms.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.grams.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.milligrams.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.micrograms.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.ounces.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.none)]))
            ]

        return ConversionTable(elements)
    }
}
