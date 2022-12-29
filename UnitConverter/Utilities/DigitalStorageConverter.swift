//
//  DigitalStorageConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

struct DigitalStorageConverter{
    
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
            DigitalStorage.bits.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            DigitalStorage.kilobits.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000.0)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            DigitalStorage.megabits.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000.0)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            DigitalStorage.gigabits.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000.0)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            DigitalStorage.terabits.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000.0)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            DigitalStorage.petabits.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000.0)]),
            nextFormula: Formula([Instruction(op.mult, 0.125)])),
            
            ConversionElement(
            DigitalStorage.petabytes.fullName,
            previousFormula: Formula([Instruction(op.divide, 0.125)]),
            nextFormula: Formula([Instruction(op.mult, 1000.0)])),
            
            ConversionElement(
            DigitalStorage.terabytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 0.001)]),
            nextFormula: Formula([Instruction(op.mult, 1000.0)])),
            
            ConversionElement(
            DigitalStorage.gigabytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 0.001)]),
            nextFormula: Formula([Instruction(op.mult, 1000.0)])),
            
            ConversionElement(
            DigitalStorage.megabytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 0.001)]),
            nextFormula: Formula([Instruction(op.mult, 1000.0)])),
            
            ConversionElement(
            DigitalStorage.kilobytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 0.001)]),
            nextFormula: Formula([Instruction(op.mult, 1000.0)])),
            
            ConversionElement(
            DigitalStorage.bytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 0.001)]),
            nextFormula: Formula([Instruction(op.divide, 1024.0)])),
            
            ConversionElement(
            DigitalStorage.kibibytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 1024.0)]),
            nextFormula: Formula([Instruction(op.divide, 1024.0)])),
            
            ConversionElement(
            DigitalStorage.mebibytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 1024.0)]),
            nextFormula: Formula([Instruction(op.divide, 1024.0)])),
            
            ConversionElement(
            DigitalStorage.gibibytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 1024.0)]),
            nextFormula: Formula([Instruction(op.divide, 1024.0)])),
            
            ConversionElement(
            DigitalStorage.tebibytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 1024.0)]),
            nextFormula: Formula([Instruction(op.divide, 1024.0)])),
            
            ConversionElement(
            DigitalStorage.pebibytes.fullName,
            previousFormula: Formula([Instruction(op.mult, 1024.0)]),
            nextFormula: Formula([Instruction(op.mult, 8.0)])),
            
            ConversionElement(
            DigitalStorage.pebibits.fullName,
            previousFormula: Formula([Instruction(op.divide, 8.0)]),
            nextFormula: Formula([Instruction(op.mult, 1024.0)])),
            
            ConversionElement(
            DigitalStorage.tebibits.fullName,
            previousFormula: Formula([Instruction(op.divide, 1024.0)]),
            nextFormula: Formula([Instruction(op.mult, 1024.0)])),
            
            ConversionElement(
            DigitalStorage.gibibits.fullName,
            previousFormula: Formula([Instruction(op.divide, 1024.0)]),
            nextFormula: Formula([Instruction(op.mult, 1024.0)])),
            
            ConversionElement(
            DigitalStorage.mebibits.fullName,
            previousFormula: Formula([Instruction(op.divide, 1024.0)]),
            nextFormula: Formula([Instruction(op.mult, 1024.0)])),
            
            ConversionElement(
            DigitalStorage.kibibits.fullName,
            previousFormula: Formula([Instruction(op.divide, 1024.0)]),
            nextFormula: Formula([Instruction(op.none)]))

            ]

        return ConversionTable(elements)
    }
}


