//
//  FrequencyConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/27/22.
//

import XCTest
@testable import UnitConverter


struct FrequencyConverterTests {
    func run(){
        let hertz = TestMap(UnitType.energy.name,
                            testUnit: TestUnit(Frequency.hertz.fullName, "1"),
                            compareUnits: [
                                TestUnit(Frequency.hertz.fullName, "1"),
                                TestUnit(Frequency.kilohertz.fullName, "0.001"),
                                TestUnit(Frequency.megahertz.fullName, "1e-6"),
                                TestUnit(Frequency.gigahertz.fullName, "1e-9"),
                                
                            ])
        TestUtils.convertMulitpleAssertions(mapping: hertz)
        
        let megaHertz = TestMap(UnitType.energy.name,
                            testUnit: TestUnit(Frequency.gigahertz.fullName, "1"),
                            compareUnits: [
                                TestUnit(Frequency.hertz.fullName, "1e+9"),
                                TestUnit(Frequency.kilohertz.fullName, "1e+9"),
                                TestUnit(Frequency.megahertz.fullName, "1000"),
                                TestUnit(Frequency.gigahertz.fullName, "1"),
                                
                            ])
        TestUtils.convertMulitpleAssertions(mapping: megaHertz)
        
       
    }
    
}

