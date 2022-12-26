//
//  TestUtils.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/22/22.
//


import XCTest
@testable import UnitConverter


struct TestUtils {
    static func converterAssert(_ unitType : String, _ unitA : String , _ unitB : String, value : String, expectedResult : String){
        let result = Converter.convertAtoB(units: unitType, unitTypeA: unitA, unitTypeB: unitB, valueA: value)
        
        let resultNum : Double = Double(result) ?? -1.0
        let expectedNum : Double = Double(expectedResult) ?? -2.0
        
        var passed = false
        if abs(resultNum - expectedNum) <= 0.01 {
            passed = true
        }
        
        XCTAssert( passed, "\(unitA) to \(unitB) -- \(value) \(unitA) should be \(expectedResult) \(unitB), but returned \(result) \(unitB).")
    }
    
    static func convertMulitpleAssertions(mapping : TestMap){
        let testUnit = mapping.testUnit
        let compareUnits = mapping.compareTestUnits
        let unitType = mapping.unitType
        for compareUnit in compareUnits {
            converterAssert(unitType, testUnit.unitName, compareUnit.unitName, value: testUnit.value, expectedResult: compareUnit.value)
        }
    }
}

struct TestMap {
    let testUnit : TestUnit
    let compareTestUnits : [TestUnit]
    let unitType : String
    
    init(_ unitType : String, testUnit : TestUnit, compareUnits: [TestUnit]){
        self.unitType = unitType
        self.testUnit = testUnit
        self.compareTestUnits = compareUnits
    }
}

struct TestUnit {
    let unitName : String
    let value : String
    
    init(_ unitName : String, _ value : String){
        self.unitName = unitName
        self.value = value
    }
}
