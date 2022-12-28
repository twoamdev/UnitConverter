//
//  AreaConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/28/22.
//

import XCTest
@testable import UnitConverter


struct AreaConverterTests {
    func run(){
        let sqInches = TestMap(UnitType.area.name,
                            testUnit: TestUnit(Area.squareInches.fullName, "1"),
                            compareUnits: [
                                TestUnit(Area.squareInches.fullName, "1"),
                                TestUnit(Area.squareFeet.fullName, "0.00694444"),
                                TestUnit(Area.squareYards.fullName, "0.000771605"),
                                TestUnit(Area.squareMiles.fullName, "2.491e-10"),
                                TestUnit(Area.acres.fullName, "1.5942e-7"),
                                TestUnit(Area.squareMeters.fullName, "0.00064516"),
                                TestUnit(Area.squareKilometers.fullName, "6.4516e-10"),
                                TestUnit(Area.hectares.fullName, "6.4516e-8"),
                                
                                
                            ])
        TestUtils.convertMulitpleAssertions(mapping: sqInches)
        
        let sqMeters = TestMap(UnitType.area.name,
                            testUnit: TestUnit(Area.squareMeters.fullName, "1"),
                            compareUnits: [
                                TestUnit(Area.squareInches.fullName, "1550"),
                                TestUnit(Area.squareFeet.fullName, "10.7639"),
                                TestUnit(Area.squareYards.fullName, "1.19599"),
                                TestUnit(Area.squareMiles.fullName, "3.861e-7"),
                                TestUnit(Area.acres.fullName, "0.000247105"),
                                TestUnit(Area.squareMeters.fullName, "1"),
                                TestUnit(Area.squareKilometers.fullName, "1e-6"),
                                TestUnit(Area.hectares.fullName, "1e-4"),
                                
                                
                            ])
        TestUtils.convertMulitpleAssertions(mapping: sqMeters)
       
    }
    
}


