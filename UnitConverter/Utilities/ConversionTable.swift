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
        print("\tEntering convertAtoB in ConversionTable...\n\tunitNameA: ->\(unitNameA)<-\n\tunitNameB: ->\(unitNameB)<-\n\tvalueToConvert: \(valueToConvert)")
        
        
        var indexA = -1
        var indexB = -1
        for i in 0..<self.orderedTable.count {
            let elem = self.orderedTable[i]
            //print("\telem name: ->\(elem.unitName)<-\n\t\tindex: (\(i))")
            if indexA == -1{
                indexA = elem.unitName == unitNameA ? i : -1
            }
            if indexB == -1{
                indexB = elem.unitName == unitNameB ? i : -1
            }
        }
        print("\t(indexA: \(indexA) -- indexB: \(indexB))")
        if indexA == -1 && indexB == -1{
            return ""
        }

        var value : Double = valueToConvert
        if indexA < indexB{
            print("\t-----\n\tascending")
            for i in indexA..<indexB{
                print("\t\tcurrent index: \(i)")
                let elem = self.orderedTable[i]
                print("\t\telem: \(elem.unitName)\n\t\tvalue before: \(value)\n\t\tformula: |\(elem.nextFormula)|")
                value = ConversionParser.executeFormula(value, elem.nextFormula)
                print("\t\t**convert**\n\t\tvalue after: \(value)")
            }
            print("\tDone executing, leaving convert in conversion table")
        }
        if indexB < indexA{
            print("\t-----\n\tdescending")
            for i in stride(from: indexA, to: indexB, by: -1){
                print("\t\tcurrent index: \(i)")
                let elem = self.orderedTable[i]
                print("\t\telem: \(elem.unitName)\n\t\tvalue before: \(value)\n\t\tformula: |\(elem.nextFormula)|")
                value = ConversionParser.executeFormula(value, elem.previousFormula)
                print("\t\t**convert**\n\t\tvalue after: \(value)")
            }
            print("\tDone executing, leaving convert in conversion table")
        }

        return String(value)
    }
    
}

struct ConversionElement {
    
    let unitName : String
    let previousFormula : String
    let nextFormula : String
    
    init(_ unitName : String, convertToPreviousFormula : String, convertToNextFormula : String){
        self.unitName = unitName
        self.previousFormula = convertToPreviousFormula
        self.nextFormula = convertToNextFormula
    }
    
}

struct ConversionParser {
    static let stop = "_"
    static let mult = "*"
    static let divide = "/"
    static let add = "+"
    static let minus = "-"
    static let none = ""
    
    static func executeFormula(_ value : Double, _ formula : String) -> Double{
        print("\t\t\t --- inside forumla execution ---")
        if formula == self.none{
            return value
        }

        var operations : [String] = formula.components(separatedBy: self.stop)
        operations.removeAll{$0.isEmpty}
        print("\t\t\toperations: \(operations)")
        var execValue = value
        print("\t\t\texecValue: \(execValue)")
        for operation in operations {
            var components : [String] = operation.components(separatedBy: " ")
            components.removeAll{$0.isEmpty}
            print("\t\t\t\tcomponents: \(components)")
            if components.isEmpty{
                return value
            }
            let operationToken = components[0]
            if let operationValue = Double(components[1]){
                switch operationToken {
                case self.mult:
                    execValue *= operationValue
                case self.divide:
                    execValue /= operationValue
                case self.add:
                    execValue += operationValue
                case self.minus:
                    execValue -= operationValue
                default:
                    execValue = value
                }
            }
        }
        return execValue
    }
}


