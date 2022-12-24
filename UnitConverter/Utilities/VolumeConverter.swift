//
//  VolumeConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/24/22.
//

import Foundation

struct VolumeConverter{
    
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
        let elements : [ConversionElement] = [
            ConversionElement(
            Volume.USGallons.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.mult, 4)])),
            
            ConversionElement(
            Volume.USQuarts.fullName,
            previousFormula: Formula([Instruction(op.divide, 4)]),
            nextFormula: Formula([Instruction(op.mult, 2)])),
            
            ConversionElement(
            Volume.USPints.fullName,
            previousFormula: Formula([Instruction(op.divide, 2)]),
            nextFormula: Formula([Instruction(op.mult, 2)])),
            
            ConversionElement(
            Volume.USCups.fullName,
            previousFormula: Formula([Instruction(op.divide, 2)]),
            nextFormula: Formula([Instruction(op.mult, (236.5882365/240.0))])),
            
            ConversionElement(
            Volume.USLegalCups.fullName,
            previousFormula: Formula([Instruction(op.divide, (236.5882365/240.0))]),
            nextFormula: Formula([Instruction(op.divide, (236.5882365/240.0)),
                                  Instruction(op.mult, 8)])),
            
            ConversionElement(
            Volume.USOunces.fullName,
            previousFormula: Formula([Instruction(op.divide, 8),
                                      Instruction(op.mult, (236.5882365/240.0))]),
            nextFormula: Formula([Instruction(op.mult, 2)])),
            
            ConversionElement(
            Volume.USTablespoons.fullName,
            previousFormula: Formula([Instruction(op.divide, 2)]),
            nextFormula: Formula([Instruction(op.mult, 3)])),
            
            ConversionElement(
            Volume.USTeaspoons.fullName,
            previousFormula: Formula([Instruction(op.divide, 3)]),
            nextFormula: Formula([Instruction(op.mult, 4.928922)])),
            
            ConversionElement(
            Volume.milliliters.fullName,
            previousFormula: Formula([Instruction(op.divide, 4.928922)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            Volume.liters.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 0.001)])),
            
            ConversionElement(
            Volume.cubicMeters.fullName,
            previousFormula: Formula([Instruction(op.mult, 1000)]),
            nextFormula: Formula([Instruction(op.mult, 219.969152)])),

            ConversionElement(
            Volume.imperialGallons.fullName,
            previousFormula: Formula([Instruction(op.divide, 219.969152)]),
            nextFormula: Formula([Instruction(op.mult, 4)])),
            
            ConversionElement(
            Volume.imperialQuarts.fullName,
            previousFormula: Formula([Instruction(op.divide, 4)]),
            nextFormula: Formula([Instruction(op.mult, 2)])),
            
            ConversionElement(
            Volume.imperialPints.fullName,
            previousFormula: Formula([Instruction(op.divide, 2)]),
            nextFormula: Formula([Instruction(op.mult, 2)])),
            
            ConversionElement(
            Volume.imperialCups.fullName,
            previousFormula: Formula([Instruction(op.divide, 2)]),
            nextFormula: Formula([Instruction(op.mult, 10)])),
            
            ConversionElement(
            Volume.imperialOunces.fullName,
            previousFormula: Formula([Instruction(op.divide, 10)]),
            nextFormula: Formula([Instruction(op.mult, 1.6)])),
            
            ConversionElement(
            Volume.imperialTablespoons.fullName,
            previousFormula: Formula([Instruction(op.divide, 1.6)]),
            nextFormula: Formula([Instruction(op.mult, 3)])),
            
            ConversionElement(
            Volume.imperialTeaspoons.fullName,
            previousFormula: Formula([Instruction(op.divide, 3)]),
            nextFormula: Formula([Instruction(op.mult, 0.0002090412151509)])),
            
            ConversionElement(
            Volume.cubicFeet.fullName,
            previousFormula: Formula([Instruction(op.divide, 0.0002090412151509)]),
            nextFormula: Formula([Instruction(op.mult, 1728)])),
            
            ConversionElement(
            Volume.cubicInches.fullName,
            previousFormula: Formula([Instruction(op.divide, 1728)]),
            nextFormula: Formula([Instruction(op.none)]))
            ]

        return ConversionTable(elements)
    }
}
