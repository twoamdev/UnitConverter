//
//  ConversionTable.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/22/22.
//

import Foundation

struct ConversionTable{
    private var orderedTable : [ConversionElement]
    
    init(_ table : [ConversionElement]){
        self.orderedTable = table
    }
    

    func convertAtoB(unitNameA : String, unitNameB : String, _ valueToConvert: Double) -> String{
        var indexA = -1
        var indexB = -1
        for i in 0..<self.orderedTable.count {
            let elem = self.orderedTable[i]
            if indexA == -1{
                indexA = elem.unitName == unitNameA ? i : -1
            }
            if indexB == -1{
                indexB = elem.unitName == unitNameB ? i : -1
            }
        }
        if indexA == -1 && indexB == -1{
            return ""
        }

        var value : Double = valueToConvert
        if indexA < indexB{
            for i in indexA..<indexB{
                let elem = self.orderedTable[i]
                value = ConversionParser.executeFormula(value, elem.nextFormula)
            }
        }
        if indexB < indexA{
            for i in stride(from: indexA, to: indexB, by: -1){
                let elem = self.orderedTable[i]
                value = ConversionParser.executeFormula(value, elem.previousFormula)
            }
        }

        return String(value)
    }
    
}

struct ConversionElement {
    
    let unitName : String
    let previousFormula : Formula
    let nextFormula : Formula
    
    init(_ unitName : String, previousFormula : Formula, nextFormula : Formula){
        self.unitName = unitName
        self.previousFormula = previousFormula
        self.nextFormula = nextFormula
    }
    
}

struct Formula {
    let instructions : [Instruction]
    
    init(_ instructions : [Instruction]){
        self.instructions = instructions
    }
    
    func isExecutable() -> Bool{
        for instruction in self.instructions {
            if instruction.isExecutable(){
                return true
            }
        }
        return false
    }
}

struct Instruction {
    let operation : InstructionOp
    let operand : Double
    
    init(_ operation : InstructionOp){
        self.operation = operation
        self.operand = 0.0
    }
    
    init(_ operation : InstructionOp, _ operand : Double){
        self.operation = operation
        self.operand = operand
    }
    
    func isExecutable() -> Bool {
        return self.operation != InstructionOp.none ? true : false
    }
}

enum InstructionOp : String{
    case mult = "*"
    case divide = "/"
    case add = "+"
    case minus = "-"
    case flip = "flip"
    case none = ""
}

struct ConversionParser {
    static func executeFormula(_ value : Double, _ formula : Formula) -> Double{
        if !formula.isExecutable(){
            return value
        }

        var execValue = value
        for instruction in formula.instructions {
            switch instruction.operation {
            case InstructionOp.mult:
                execValue *= instruction.operand
            case InstructionOp.divide:
                execValue /= instruction.operand
            case InstructionOp.add:
                execValue += instruction.operand
            case InstructionOp.minus:
                execValue -= instruction.operand
            case InstructionOp.flip:
                execValue = 1.0/execValue
            default:
                continue
            }
        }
        return execValue
    }
}


