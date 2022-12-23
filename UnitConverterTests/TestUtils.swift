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
        
        XCTAssert( result == expectedResult, "\(unitA) to \(unitB) -- \(value) \(unitA) should be \(expectedResult) \(unitB), but returned \(result) \(unitB).")
    }
    
    
}
