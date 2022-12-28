//
//  PlaneAngleConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/28/22.
//

import XCTest
@testable import UnitConverter


struct PlaneAngleConverterTests {
    func run(){
        let radians = TestMap(UnitType.planeAngle.name,
                            testUnit: TestUnit(PlaneAngle.radians.fullName, "1"),
                            compareUnits: [
                                TestUnit(PlaneAngle.radians.fullName, "1"),
                                TestUnit(PlaneAngle.milliradians.fullName, "1000"),
                                TestUnit(PlaneAngle.gradians.fullName, "63.662"),
                                TestUnit(PlaneAngle.degrees.fullName, "57.2958"),
                                TestUnit(PlaneAngle.arcSeconds.fullName, "206264.806247"),
                                TestUnit(PlaneAngle.minuteOfArc.fullName, "3437.75")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: radians)
        
        let minOfArc = TestMap(UnitType.planeAngle.name,
                            testUnit: TestUnit(PlaneAngle.minuteOfArc.fullName, "1"),
                            compareUnits: [
                                TestUnit(PlaneAngle.radians.fullName, "0.000290888"),
                                TestUnit(PlaneAngle.milliradians.fullName, "0.290888"),
                                TestUnit(PlaneAngle.gradians.fullName, "0.0185185"),
                                TestUnit(PlaneAngle.degrees.fullName, "0.0166667"),
                                TestUnit(PlaneAngle.arcSeconds.fullName, "60"),
                                TestUnit(PlaneAngle.minuteOfArc.fullName, "1")
                            ])
        
        TestUtils.convertMulitpleAssertions(mapping: minOfArc)
       
    }
    
}




