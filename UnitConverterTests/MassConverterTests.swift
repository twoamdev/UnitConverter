//
//  MassConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/26/22.
//

import XCTest
@testable import UnitConverter


struct MassConverterTests {
    
    /*metricTon, kilogram, gram, milligram, microgram, imperialTon, USTon, stone, pound, ounce
     
     
     */
    func run(){
        let metricTons = TestMap(UnitType.mass.name,
                            testUnit: TestUnit(Mass.metricTon.fullName, "1"),
                            compareUnits: [
                                TestUnit(Mass.metricTon.fullName, "1"),
                                TestUnit(Mass.kilogram.fullName, "1000"),
                                TestUnit(Mass.gram.fullName, "1e+6"),
                                TestUnit(Mass.milligram.fullName, "1e+9"),
                                TestUnit(Mass.microgram.fullName, "1e+12"),
                                TestUnit(Mass.imperialTon.fullName, "0.984207"),
                                TestUnit(Mass.USTon.fullName, "1.10231"),
                                TestUnit(Mass.stone.fullName, "157.473"),
                                TestUnit(Mass.pound.fullName, "2204.62"),
                                TestUnit(Mass.ounce.fullName, "35273.96195")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: metricTons)
        
        let stones = TestMap(UnitType.mass.name,
                            testUnit: TestUnit(Mass.stone.fullName, "1"),
                            compareUnits: [
                                TestUnit(Mass.metricTon.fullName, "0.00635029"),
                                TestUnit(Mass.kilogram.fullName, "6.35029"),
                                TestUnit(Mass.gram.fullName, "6350.29"),
                                TestUnit(Mass.milligram.fullName, "6350293.179996"),
                                TestUnit(Mass.microgram.fullName, "6.3503e+9"),
                                TestUnit(Mass.imperialTon.fullName, "0.00625"),
                                TestUnit(Mass.USTon.fullName, "0.007"),
                                TestUnit(Mass.stone.fullName, "1"),
                                TestUnit(Mass.pound.fullName, "14"),
                                TestUnit(Mass.ounce.fullName, "224")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: stones)
        
        let imperialTons = TestMap(UnitType.mass.name,
                            testUnit: TestUnit(Mass.imperialTon.fullName, "1"),
                            compareUnits: [
                                TestUnit(Mass.metricTon.fullName, "1.01605"),
                                TestUnit(Mass.kilogram.fullName, "1016.05"),
                                TestUnit(Mass.gram.fullName, "1016046.908799"),
                                TestUnit(Mass.milligram.fullName, "1.016e+9"),
                                TestUnit(Mass.microgram.fullName, "1.016e+12"),
                                TestUnit(Mass.imperialTon.fullName, "1"),
                                TestUnit(Mass.USTon.fullName, "1.12"),
                                TestUnit(Mass.stone.fullName, "160"),
                                TestUnit(Mass.pound.fullName, "2240"),
                                TestUnit(Mass.ounce.fullName, "35840")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: imperialTons)
    }
    
}
