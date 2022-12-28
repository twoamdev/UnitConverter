//
//  AreaConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

struct AreaConverter{
    
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
            Area.squareInches.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.divide, 144.0)])),
            
            ConversionElement(
            Area.squareFeet.fullName,
            previousFormula: Formula([Instruction(op.mult, 144.0)]),
            nextFormula: Formula([Instruction(op.divide, 9.0)])),
            
            ConversionElement(
            Area.squareYards.fullName,
            previousFormula: Formula([Instruction(op.mult, 9.0)]),
            nextFormula: Formula([Instruction(op.divide, 4840.0)])),
            
            ConversionElement(
            Area.acres.fullName,
            previousFormula: Formula([Instruction(op.mult, 4840.0)]),
            nextFormula: Formula([Instruction(op.divide, 640.0)])),
            
            ConversionElement(
            Area.squareMiles.fullName,
            previousFormula: Formula([Instruction(op.mult, 640.0)]),
            nextFormula: Formula([Instruction(op.mult, 2.5899881103362592)])),
            
            ConversionElement(
            Area.squareKilometers.fullName,
            previousFormula: Formula([Instruction(op.divide, 2.5899881103362592)]),
            nextFormula: Formula([Instruction(op.mult, 100.0)])),
            
            ConversionElement(
            Area.hectares.fullName,
            previousFormula: Formula([Instruction(op.divide, 100.0)]),
            nextFormula: Formula([Instruction(op.mult, 10000.0)])),
            
            ConversionElement(
            Area.squareMeters.fullName,
            previousFormula: Formula([Instruction(op.divide, 10000.0)]),
            nextFormula: Formula([Instruction(op.none)]))
            
            ]

        return ConversionTable(elements)
    }
}

