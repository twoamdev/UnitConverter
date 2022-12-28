//
//  PlaneAngleConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

struct PlaneAngleConverter{
    
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
            PlaneAngle.arcSeconds.fullName,
            previousFormula: Formula([Instruction(op.none)]),
            nextFormula: Formula([Instruction(op.divide, 3600.0)])),
            
            ConversionElement(
            PlaneAngle.degrees.fullName,
            previousFormula: Formula([Instruction(op.mult, 3600.0)]),
            nextFormula: Formula([Instruction(op.mult, (Double.pi/180.0))])),
            
            ConversionElement(
            PlaneAngle.radians.fullName,
            previousFormula: Formula([Instruction(op.mult, (180.0/Double.pi))]),
            nextFormula: Formula([Instruction(op.mult, 1000.0)])),
            
            ConversionElement(
            PlaneAngle.milliradians.fullName,
            previousFormula: Formula([Instruction(op.divide, 1000.0)]),
            nextFormula: Formula([Instruction(op.mult, (200.0/1000.0)),
                                  Instruction(op.mult, (1.0/Double.pi))])),
            
            ConversionElement(
            PlaneAngle.gradians.fullName,
            previousFormula: Formula([Instruction(op.mult, Double.pi),
                                      Instruction(op.mult, 1000.0/200.0)]),
            nextFormula: Formula([Instruction(op.mult,54.0)])),
            
            ConversionElement(
            PlaneAngle.minuteOfArc.fullName,
            previousFormula: Formula([Instruction(op.divide, 54.0)]),
            nextFormula: Formula([Instruction(op.none)]))
        
            ]

        return ConversionTable(elements)
    }
}

