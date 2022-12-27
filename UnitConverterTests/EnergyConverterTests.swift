//
//  EnergyConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/26/22.
//

import XCTest
@testable import UnitConverter


struct EnergyConverterTests {
    func run(){
        let joules = TestMap(UnitType.energy.name,
                            testUnit: TestUnit(Energy.joules.fullName, "1"),
                            compareUnits: [
                                TestUnit(Energy.joules.fullName, "1"),
                                TestUnit(Energy.kilojoules.fullName, "0.001"),
                                TestUnit(Energy.gramCalories.fullName, "0.239006"),
                                TestUnit(Energy.kilocalories.fullName, "0.000239"),
                                TestUnit(Energy.wattHours.fullName, "0.000278"),
                                TestUnit(Energy.kilowattHours.fullName, "2.7778e-7"),
                                TestUnit(Energy.electronVolts.fullName, "6.2415e+18"),
                                TestUnit(Energy.britishThermalUnits.fullName, "0.000947817"),
                                TestUnit(Energy.USTherms.fullName, "9.4804e-9"),
                                TestUnit(Energy.footPounds.fullName, "0.737562")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: joules)
        
       
    }
    
}
