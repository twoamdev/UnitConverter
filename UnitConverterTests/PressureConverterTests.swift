//
//  PressureConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/28/22.
//

import XCTest
@testable import UnitConverter


struct PressureConverterTests {
    func run(){
        let bar = TestMap(UnitType.pressure.name,
                            testUnit: TestUnit(Pressure.bar.fullName, "1"),
                            compareUnits: [
                                TestUnit(Pressure.bar.fullName, "1"),
                                TestUnit(Pressure.atmosphere.fullName, "0.986923"),
                                TestUnit(Pressure.pascal.fullName, "100000"),
                                TestUnit(Pressure.poundFeetPerSqInch.fullName, "14.5038"),
                                TestUnit(Pressure.torr.fullName, "750.062")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: bar)
        
        let pascal = TestMap(UnitType.pressure.name,
                            testUnit: TestUnit(Pressure.pascal.fullName, "1"),
                            compareUnits: [
                                TestUnit(Pressure.bar.fullName, "1e-5"),
                                TestUnit(Pressure.atmosphere.fullName, "9.8692e-6"),
                                TestUnit(Pressure.pascal.fullName, "1"),
                                TestUnit(Pressure.poundFeetPerSqInch.fullName, "0.000145038"),
                                TestUnit(Pressure.torr.fullName, "0.00750062")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: pascal)
        
       
    }
    
}



