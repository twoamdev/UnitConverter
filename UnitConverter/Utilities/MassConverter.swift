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
            Mass.stone.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.mult, 224)])),
            
            ConversionElement(
            Mass.ounce.fullName,
            previousFormula: Formula([Instruction(op.divide, 224)]),
            nextFormula: Formula([Instruction(op.divide, 16)])),
            
            ConversionElement(
            Mass.pound.fullName,
            previousFormula: Formula([Instruction(op.mult, 16)]),
            nextFormula: Formula([Instruction(op.divide, 2000)])),
            
            ConversionElement(
            Mass.USTon.fullName,
            previousFormula: Formula([Instruction(op.mult, 2000)]),
            nextFormula: Formula([Instruction(op.mult, 2000),
                                  Instruction(op.divide, 2240)])),
            
            ConversionElement(
            Mass.imperialTon.fullName,
            previousFormula: Formula([Instruction(op.mult, 2240),
                                      Instruction(op.divide, 2000)]),
            nextFormula: Formula([Instruction(op.mult, 2240),
                                  Instruction(op.divide, 2.20462262185),
                                  Instruction(op.divide, 1000)])),

            ConversionElement(
            Mass.metricTon.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000),
                                      Instruction(op.mult, 2.20462262185),
                                      Instruction(op.divide, 2240)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.kilogram.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.gram.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.milligram.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.microgram.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1000)])),
            
            ConversionElement(
            Mass.ounce.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000)]),
            nextFormula: Formula([Instruction(op.none)]))
            ]

        return ConversionTable(elements)
    }
}
