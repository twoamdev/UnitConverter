//
//  MassConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/26/22.
//

import XCTest
@testable import UnitConverter


struct MassConverterTests {
    
    func run(){
        let metricTons = TestMap(UnitType.mass.name,
                            testUnit: TestUnit(Mass.metricTons.fullName, "1"),
                            compareUnits: [
                                TestUnit(Mass.metricTons.fullName, "1"),
                                TestUnit(Mass.kilograms.fullName, "1000"),
                                TestUnit(Mass.grams.fullName, "1e+6"),
                                TestUnit(Mass.milligrams.fullName, "1e+9"),
                                TestUnit(Mass.micrograms.fullName, "1e+12"),
                                TestUnit(Mass.imperialTons.fullName, "0.984207"),
                                TestUnit(Mass.USTons.fullName, "1.10231"),
                                TestUnit(Mass.stones.fullName, "157.473"),
                                TestUnit(Mass.pounds.fullName, "2204.62"),
                                TestUnit(Mass.ounces.fullName, "35273.96195")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: metricTons)
        
        let stones = TestMap(UnitType.mass.name,
                            testUnit: TestUnit(Mass.stones.fullName, "1"),
                            compareUnits: [
                                TestUnit(Mass.metricTons.fullName, "0.00635029"),
                                TestUnit(Mass.kilograms.fullName, "6.35029"),
                                TestUnit(Mass.grams.fullName, "6350.29"),
                                TestUnit(Mass.milligrams.fullName, "6350293.179996"),
                                TestUnit(Mass.micrograms.fullName, "6.3503e+9"),
                                TestUnit(Mass.imperialTons.fullName, "0.00625"),
                                TestUnit(Mass.USTons.fullName, "0.007"),
                                TestUnit(Mass.stones.fullName, "1"),
                                TestUnit(Mass.pounds.fullName, "14"),
                                TestUnit(Mass.ounces.fullName, "224")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: stones)
        
        let imperialTons = TestMap(UnitType.mass.name,
                            testUnit: TestUnit(Mass.imperialTons.fullName, "1"),
                            compareUnits: [
                                TestUnit(Mass.metricTons.fullName, "1.01605"),
                                TestUnit(Mass.kilograms.fullName, "1016.05"),
                                TestUnit(Mass.grams.fullName, "1016046.908799"),
                                TestUnit(Mass.milligrams.fullName, "1.016e+9"),
                                TestUnit(Mass.micrograms.fullName, "1.016e+12"),
                                TestUnit(Mass.imperialTons.fullName, "1"),
                                TestUnit(Mass.USTons.fullName, "1.12"),
                                TestUnit(Mass.stones.fullName, "160"),
                                TestUnit(Mass.pounds.fullName, "2240"),
                                TestUnit(Mass.ounces.fullName, "35840")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: imperialTons)
    }
    
}
