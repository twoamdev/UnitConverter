//
//  FuelConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

struct FuelConverter{
    
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
            FuelEconomy.milesPerGallon.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.mult, 1.20095)])),
            
            ConversionElement(
            FuelEconomy.milesPerImperialGallons.fullName,
            previousFormula: Formula([Instruction(op.divide, 1.20095)]),
            nextFormula: Formula([Instruction(op.mult, 0.354006)])),
            
            ConversionElement(
            FuelEconomy.kilometersPerLiter.fullName,
            previousFormula: Formula([Instruction(op.divide, 0.354006)]),
            nextFormula: Formula([Instruction(op.flip),
                                  Instruction(op.mult, 100.0)])),
            
            ConversionElement(
            FuelEconomy.litersPer100Kilometers.fullName,
            previousFormula: Formula([Instruction(op.divide, 100.0),
                                      Instruction(op.flip)]),
            nextFormula: Formula([Instruction(op.none)]))
            
            ]

        return ConversionTable(elements)
    }
}

