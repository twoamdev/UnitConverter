//
//  EnergyConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/26/22.
//

import Foundation

struct EnergyConverter{
    
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
            Energy.joules.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            Energy.kilojoules.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 239.006)])),
            
            ConversionElement(
            Energy.gramCalories.fullName,
            previousFormula: Formula([Instruction(op.divide, 239.006)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            Energy.kilocalories.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 1.1622222)])),
            
            ConversionElement(
            Energy.wattHours.fullName,
            previousFormula: Formula([Instruction(op.divide, 1.1622222)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            Energy.kilowattHours.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 22469385462308000000000000.0)])),
            
            ConversionElement(
            Energy.electronVolts.fullName,
            previousFormula: Formula([Instruction(op.divide, 22469385462308000000000000.0)]),
            nextFormula: Formula([Instruction(op.divide, 22469385462308000000000000.0),
                                  Instruction(op.mult, 3412.1416416)])),
            
            ConversionElement(
            Energy.britishThermalUnits.fullName,
            previousFormula: Formula([Instruction(op.mult, 22469385462308000000000000.0),
                                      Instruction(op.divide, 3412.1416416)]),
            nextFormula: Formula([Instruction(op.mult, 0.000010002388121395)])),
            
            ConversionElement(
            Energy.USTherms.fullName,
            previousFormula: Formula([Instruction(op.divide, 0.000010002388121395)]),
            nextFormula: Formula([Instruction(op.mult, 77798000.0)])),
            
            ConversionElement(
            Energy.footPounds.fullName,
            previousFormula: Formula([Instruction(op.divide, 77798000.0)]),
            nextFormula: Formula([Instruction(op.none)]))

            ]

        return ConversionTable(elements)
    }
}
